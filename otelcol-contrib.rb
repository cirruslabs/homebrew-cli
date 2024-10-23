class OtelcolContrib < Formula
  desc "OpenTelemetry Collector (binary contrib distribution)"
  homepage "https://opentelemetry.io/docs/collector/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.111.0/otelcol-contrib_0.111.0_darwin_amd64.tar.gz"
    sha256 "c00024fd85008e265db7238b019732935475604aad5457772913643db0c707bd"
  else
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.111.0/otelcol-contrib_0.111.0_darwin_arm64.tar.gz"
    sha256 "e56bf2cb535b6c089915415d2ab5e477c98628d03f3376aaf9124fa4f8b24f97"
  end

  def install
    bin.install "otelcol-contrib"
  end

  test do
    require "net/http"

    (testpath/"config.yaml").write <<~EOF
      receivers:
        otlp:
          protocols:
            http:
      exporters:
        logging:
          verbosity: detailed
      service:
        pipelines:
          metrics:
            receivers: [otlp]
            exporters: [logging]
    EOF

    fork do
      system "#{bin}/otelcol-contrib", "--config", (testpath/"config.yaml")
    end

    sleep 3

    resp = Net::HTTP.post(URI("http://127.0.0.1:4318/v1/metrics"), "{}", {
      "Content-Type": "application/json",
    })
    assert_equal true, (resp.is_a? Net::HTTPSuccess),
      "HTTP request to OpenTelemetry Collector should succeed"
    assert_equal "{\"partialSuccess\":{}}", resp.body,
      "HTTP request to OpenTelemetry Collector should return a partial success"
  end
end
