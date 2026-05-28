class GoPlayball < Formula
  desc "Terminal-based MLB game viewer"
  homepage "https://github.com/pdavlin/go-playball"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.1.0/go-playball_darwin_arm64.tar.gz"
      sha256 "deaa483fcb5862d5ba0264b48440613ddf6cd940a258b5e044cb8811c2689a9a"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.1.0/go-playball_darwin_amd64.tar.gz"
      sha256 "5e07e5e52fb6409e466ac0b6541b112c49b0d3b92922f6b44f390827f63b7ac7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.1.0/go-playball_linux_arm64.tar.gz"
      sha256 "060e04acb884d41f3eeed95584448eac509b4b0da2b0c2258b8a77cea7a328be"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.1.0/go-playball_linux_amd64.tar.gz"
      sha256 "4a8e6abc13a5bbcd1dbcfc42690949b917b6731a012a5dbb7e6a18d585162983"
    end
  end

  def install
    bin.install "go-playball"
  end

  test do
    assert_match "go-playball", shell_output("#{bin}/go-playball version")
  end
end
