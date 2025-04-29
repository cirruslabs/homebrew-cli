class OtelcolContrib < Formula
  desc "OpenTelemetry Collector (binary contrib distribution)"
  homepage "https://opentelemetry.io/docs/collector/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.125.0/otelcol-contrib_0.125.0_darwin_amd64.tar.gz"
    sha256 "988289ec5563e971aa076495d9cac0d3d964c70ef039f135d57de9f4cfb25ff6"
  else
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.125.0/otelcol-contrib_0.125.0_darwin_arm64.tar.gz"
    sha256 "5498c95f742e687391ad692edc4414ea921b7104c3fa7ac13b60f602699ba9c8"
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
