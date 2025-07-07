class OtelcolContrib < Formula
  desc "OpenTelemetry Collector (binary contrib distribution)"
  homepage "https://opentelemetry.io/docs/collector/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.129.1/otelcol-contrib_0.129.1_darwin_amd64.tar.gz"
    sha256 "ebacdb322c1a9adab9b1bc9d118f1a25278df30419a45ce345bbf05c77c680ba"
  else
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.129.1/otelcol-contrib_0.129.1_darwin_arm64.tar.gz"
    sha256 "bd5c2acb501d525da72a55136894a619e3539026640368ff8249d5829cd51f21"
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
