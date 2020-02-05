class Proxi < Formula
  desc "Scrapes, checks and stores proxies with a rest api for querying results."
  homepage ""
  version "0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/proxi/releases/download/v0.1.5/proxi_v0.1.5_darwin_amd64.tar.gz"
    sha256 "8821d731724bd9565ffedfc9983404df4ed0d774084034fba45b433c7feefd85"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/proxi/releases/download/v0.1.5/proxi_v0.1.5_linux_amd64.tar.gz"
      sha256 "3be73f567ac690632e226e27901f186e52e38556b0bdc5894fb28b7785cc098f"
    end
  end

  def install
    bin.install "proxi"
  end

  test do
    system "#{bin}/proxi version"
  end
end
