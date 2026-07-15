class GoPlayball < Formula
  desc "Terminal-based MLB game viewer"
  homepage "https://github.com/pdavlin/go-playball"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.3.0/go-playball_darwin_arm64.tar.gz"
      sha256 "0da8bfb5eb05b1681ff3936bc9ba110dd1c3e1c566e2efeb0f80ced297bce838"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.3.0/go-playball_darwin_amd64.tar.gz"
      sha256 "83c854cacfda4498e382ff6d5a9c8c267ed4152343ebee5a89412245bf1f101d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pdavlin/go-playball/releases/download/v1.3.0/go-playball_linux_arm64.tar.gz"
      sha256 "84540cbb12401685507304e7a95cfade73f6c2404e0c343223a680a0135b0431"
    else
      url "https://github.com/pdavlin/go-playball/releases/download/v1.3.0/go-playball_linux_amd64.tar.gz"
      sha256 "747d5901313fb8a1f8acaffd7cac32a7544ba1b5643a8413c8eac35da9a7e9f1"
    end
  end

  def install
    bin.install "go-playball"
  end

  test do
    assert_match "go-playball", shell_output("#{bin}/go-playball version")
  end
end
