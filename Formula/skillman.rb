class Skillman < Formula
  desc "A package manager for Agent Skills"
  homepage "https://github.com/alexmx/skillman"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexmx/skillman/releases/download/v0.1.1/skillman-darwin-arm64-0.1.1.zip"
      sha256 "17236db215742788643656f3804b166b55b38a55597694aebb96df8f22889de2"
    else
      url "https://github.com/alexmx/skillman/releases/download/v0.1.1/skillman-darwin-amd64-0.1.1.zip"
      sha256 "127874729fd085eb3046b40d53aee247ed5e8ea4a009a47f1b09998ce2542945"
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
