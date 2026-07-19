class Peek < Formula
  desc "See and control any macOS app via accessibility API"
  homepage "https://github.com/alexmx/peek"
  url "https://github.com/alexmx/peek/releases/download/v1.9.5/peek-1.9.5-macos.zip"
  sha256 "ce8859ee56330bdc0e41f8d3f8e8548e224a5707e650691a3ce541ef5321dadb"
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
