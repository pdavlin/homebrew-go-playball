class GoPlayball < Formula
  desc "Terminal-based MLB game viewer"
  homepage "https://github.com/pdavlin/go-playball"
  version "1.0.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0-rc.1/go-playball_darwin_arm64.tar.gz"
      sha256 "34452f8270401589ace10e3ec1156c906a9fa35d3246e98c30bab0b73b17aeb4"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0-rc.1/go-playball_darwin_amd64.tar.gz"
      sha256 "b24b9145fcf1dbb4ce711e788dc887649733704f1572f2005a1c710abc765fdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0-rc.1/go-playball_linux_arm64.tar.gz"
      sha256 "0862b54d01f4b617946057f9f64a37c7aecd7ce3b9690d3d61ae52152f0fe6fc"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0-rc.1/go-playball_linux_amd64.tar.gz"
      sha256 "f34b359aed0d41afefa71eb49b1d4b52f1204c1d59bb9df96df9e6ca7d344705"
    end
  end

  def install
    bin.install "go-playball"
  end

  test do
    assert_match "go-playball", shell_output("#{bin}/go-playball version")
  end
end
