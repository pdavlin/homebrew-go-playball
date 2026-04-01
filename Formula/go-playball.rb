class GoPlayball < Formula
  desc "Terminal-based MLB game viewer"
  homepage "https://github.com/pdavlin/go-playball"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v#{version}/go-playball_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64_SHA256"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v#{version}/go-playball_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v#{version}/go-playball_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v#{version}/go-playball_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA256"
    end
  end

  def install
    bin.install "go-playball"
  end

  test do
    assert_match "go-playball", shell_output("#{bin}/go-playball version")
  end
end
