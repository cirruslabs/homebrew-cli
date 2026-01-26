class OtelcolContrib < Formula
  desc "OpenTelemetry Collector (binary contrib distribution)"
  homepage "https://opentelemetry.io/docs/collector/"
  license "Apache-2.0"
  version "0.144.0"

  if Hardware::CPU.intel?
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.144.0/otelcol-contrib_0.144.0_darwin_amd64.tar.gz"
    sha256 "0de9275b11bf6285648470fb8efec5612cb422f495df7a3fef93cd8cd647ed0e"
  else
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.144.0/otelcol-contrib_0.144.0_darwin_arm64.tar.gz"
    sha256 "605cdc88c65b23d7e0c373d56a1f411da427a978567ab186050a27791f7779b0"
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
        debug:
          verbosity: detailed
      service:
        pipelines:
          metrics:
            receivers: [otlp]
            exporters: [debug]
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
