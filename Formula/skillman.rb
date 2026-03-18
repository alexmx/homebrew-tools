class Skillman < Formula
  desc "A package manager for Agent Skills"
  homepage "https://github.com/alexmx/skillman"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexmx/skillman/releases/download/v0.2.0/skillman-darwin-arm64-0.2.0.zip"
      sha256 "969c9abf25ab4fcbf9faab1c79d69e77109efb225e0c1ffcb2d18bdd725ee8ad"
    else
      url "https://github.com/alexmx/skillman/releases/download/v0.2.0/skillman-darwin-amd64-0.2.0.zip"
      sha256 "b8ea2792cd8366bd4a8b4ef2aa0c88ec63e0e92f8034eed104f0aa688d27c352"
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
