class Pls < Formula
  desc "Ask for your own scripts in plain words, with Apple's on-device model"
  homepage "https://github.com/alexmx/pls"
  url "https://github.com/alexmx/pls/releases/download/v0.1.0/pls-0.1.0-macos.zip"
  sha256 "8e38280a5e5ec4fdc291d9da93b52df055ca7b75db520d81f5337d982551888e"
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
      Start with everyday automations, then ask for one:

        pls collection add alexmx/pls-automations
        pls collection enable my-ip
        pls "what's my ip"

      Your own automations go in ~/.config/pls/automations; `pls doctor` checks them.
      Requests in plain words need Apple Intelligence; without it pls matches by words.
    EOS
  end
end
