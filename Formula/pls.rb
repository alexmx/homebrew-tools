class Pls < Formula
  desc "Run your own automations by name or in plain words, with Apple's on-device model"
  homepage "https://github.com/alexmx/pls"
  url "https://github.com/alexmx/pls/releases/download/v0.0.0/pls-0.0.0-macos.zip"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "pls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pls --version").strip
  end

  def caveats
    <<~EOS
      Requests in plain words need Apple Intelligence; without it pls matches by words.
      Put your automations in ~/.config/pls/automations, then check them with:

        pls doctor
    EOS
  end
end
