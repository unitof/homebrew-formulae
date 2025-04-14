class Localhost < Formula
  desc "Map localhost:ports to port.localhost domains"
  homepage "https://github.com/tobyshooters/localhost"
  license ""
  head "https://github.com/tobyshooters/localhost.git"

  depends_on "caddy"
  depends_on "dnsmasq"

  def install
    bin.install "localhost"
  end

  test do
    assert_match "Usage: localhost add <subdomain> <port>", shell_output("#{bin}/localhost", 1)
  end
end
