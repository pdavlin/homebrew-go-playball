class GoPlayball < Formula
  desc "Terminal-based MLB game viewer"
  homepage "https://github.com/pdavlin/go-playball"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0/go-playball_darwin_arm64.tar.gz"
      sha256 "48b50c95f07ad96dc4cce3ecff3453bbcbb2887316a314a5a22fa2dc002cca45"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0/go-playball_darwin_amd64.tar.gz"
      sha256 "3c433507aa801567e9db78ff77f43e33cf2a664710ad3c44a3a622184bd91ca8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0/go-playball_linux_arm64.tar.gz"
      sha256 "57ed1b39912c927283c6e8d11ff36f6474aa270a8631e57eea3d14b55269996b"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.0.0/go-playball_linux_amd64.tar.gz"
      sha256 "d0f3cee8a76cfa023ff73966c34624900032b01b8c628928ec6454c19dc448ca"
    end
  end

  def install
    bin.install "go-playball"
  end

  test do
    assert_match "go-playball", shell_output("#{bin}/go-playball version")
  end
end
