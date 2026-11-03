class Peek < Formula
  desc "See and control any macOS app via accessibility API"
  homepage "https://github.com/alexmx/peek"
  url "https://github.com/alexmx/peek/releases/download/v1.14.1/peek-1.14.1-macos.zip"
  sha256 "cf6d715650e8bdc27bb353f82d62797f1aafc9451be7a5e655ac62f147667df7"
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
