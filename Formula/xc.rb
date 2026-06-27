class Xc < Formula
  desc "A better way to run xcodebuild"
  homepage "https://github.com/alexmx/xc"
  url "https://github.com/alexmx/xc/releases/download/v1.1.0/xc-1.1.0-macos.zip"
  sha256 "3ed9858381e68c128749dfd59babf7fd69d3742b3f665a8086ccfd8aeb743f30"
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
