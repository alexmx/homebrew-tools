class Peek < Formula
  desc "See and control any macOS app via accessibility API"
  homepage "https://github.com/alexmx/peek"
  url "https://github.com/alexmx/peek/releases/download/v1.0.0-rc2/peek-1.0.0-rc2-macos.zip"
  sha256 "dc155f0c37291ce75a2844f4c68a6199fe5fed3756e139e81620bf4c10420394"
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
