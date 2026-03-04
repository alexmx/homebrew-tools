class Skillman < Formula
  desc "A package manager for Agent Skills"
  homepage "https://github.com/alexmx/skillman"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexmx/skillman/releases/download/v0.1.0/skillman-darwin-arm64-0.1.0.zip"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/alexmx/skillman/releases/download/v0.1.0/skillman-darwin-amd64-0.1.0.zip"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Dir["skillman-*"].first
    mv binary, "skillman"
    bin.install "skillman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillman --version").strip
  end
end
