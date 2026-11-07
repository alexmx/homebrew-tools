class Xc < Formula
  desc "A better way to run xcodebuild"
  homepage "https://github.com/alexmx/xc"
  url "https://github.com/alexmx/xc/releases/download/v1.2.1/xc-1.2.1-macos.zip"
  sha256 "a309c0586a7a2a8d673bde23fb7b50c29b56df1c2c6a3e40b99fb6e95b2792ed"
  license "MIT"

  depends_on macos: :sequoia
  depends_on "xcbeautify" => :recommended

  def install
    bin.install "xc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xc --version").strip
  end
end
