class Peek < Formula
  desc "See and control any macOS app via accessibility API"
  homepage "https://github.com/alexmx/peek"
  url "https://github.com/alexmx/peek/releases/download/v1.10.1/peek-1.10.1-macos.zip"
  sha256 "f971cb796bf434edd91399da608d3c5e0b46f18b3b2d3024686b9b83b46c7def"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version").strip
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
