class OtelcolContrib < Formula
  desc "OpenTelemetry Collector (binary contrib distribution)"
  homepage "https://opentelemetry.io/docs/collector/"
  license "Apache-2.0"
  version "0.147.0"

  if Hardware::CPU.intel?
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.147.0/otelcol-contrib_0.147.0_darwin_amd64.tar.gz"
    sha256 "f0075b96fcc9d1c085ae76d7206cf2c52080a3237eee4ce36218cafb2c6cd9d5"
  else
    url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.147.0/otelcol-contrib_0.147.0_darwin_arm64.tar.gz"
    sha256 "3b79e51fbd0a1eecba7c0f90f4022cf5b498ee7f19d34674f4eef8b0f1f24162"
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
