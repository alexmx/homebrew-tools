class Skillman < Formula
  desc "A package manager for Agent Skills"
  homepage "https://github.com/alexmx/skillman"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexmx/skillman/releases/download/v0.3.0/skillman-darwin-arm64-0.3.0.zip"
      sha256 "99de36025ea8725cdcdf353d178ee1407530c0138ce687a20615a0cd669217e6"
    else
      url "https://github.com/alexmx/skillman/releases/download/v0.3.0/skillman-darwin-amd64-0.3.0.zip"
      sha256 "f9548c073925cb782b462155ece9bac67def73ec81652370e658af49377b4bcf"
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
