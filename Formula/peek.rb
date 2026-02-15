class Peek < Formula
  desc "See and control any macOS app via accessibility API"
  homepage "https://github.com/alexmx/peek"
  url "https://github.com/alexmx/peek/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PLACEHOLDER_UPDATE_ON_FIRST_RELEASE"
  license "MIT"  # Update if using different license
  head "https://github.com/alexmx/peek.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :sequoia  # macOS 15+

  def install
    system "swift", "build",
           "-c", "release",
           "--disable-sandbox",
           "--arch", "arm64",
           "--arch", "x86_64"
    bin.install ".build/apple/Products/Release/peek"
  end

  test do
    assert_match "dev", shell_output("#{bin}/peek --version")
  end

  def caveats
    <<~EOS
      peek requires accessibility permissions to function.
      Run the following to check and grant permissions:

        peek doctor --prompt

      This will open System Settings where you can grant access.
    EOS
  end
end
