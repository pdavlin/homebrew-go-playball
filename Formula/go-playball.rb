class GoPlayball < Formula
  desc "Terminal-based MLB game viewer"
  homepage "https://github.com/pdavlin/go-playball"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.2.0/go-playball_darwin_arm64.tar.gz"
      sha256 "8d038cfadb307f6deb54322d124d8fbfb6491a3eaaf5631b53e9e6d0d2822b42"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.2.0/go-playball_darwin_amd64.tar.gz"
      sha256 "35ff72f3eadfecbc40ed1762722c360c72d8248a1ded7ac084be40a92f4dfd49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.2.0/go-playball_linux_arm64.tar.gz"
      sha256 "6e45e3612450f9ac3ee18a91c391cb72939878b8afa3ae36a35a648f241eaef4"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.2.0/go-playball_linux_amd64.tar.gz"
      sha256 "f8dd6913f0b2da6507c1d872a2ee318aeaa74a7c9d20503e33a218eb442e4164"
    end
  end

  def install
    bin.install "go-playball"
  end

  test do
    assert_match "go-playball", shell_output("#{bin}/go-playball version")
  end
end
