class Skillman < Formula
  desc "A package manager for Agent Skills"
  homepage "https://github.com/alexmx/skillman"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexmx/skillman/releases/download/v0.1.0/skillman-darwin-arm64-0.1.0.zip"
      sha256 "46ce8fb0ab75e4c3cb3035aead0a9b06a5471e5e533b527a2095104ce5e4a534"
    else
      url "https://github.com/alexmx/skillman/releases/download/v0.1.0/skillman-darwin-amd64-0.1.0.zip"
      sha256 "5585fd7b5e179efe69169fecf5b1ce624200f6c584043b80ef12f370aaf176e7"
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
