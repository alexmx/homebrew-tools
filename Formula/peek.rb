class Peek < Formula
  desc "See and control any macOS app via accessibility API"
  homepage "https://github.com/alexmx/peek"
  url "https://github.com/alexmx/peek/releases/download/v1.13.0/peek-1.13.0-macos.zip"
  sha256 "a93a46ceceba25c1f3c1842308a4ab14e8bf3253dc51c5f79471fa5a5bb83fde"
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
