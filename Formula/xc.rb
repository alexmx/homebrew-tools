class Xc < Formula
  desc "A better way to run xcodebuild"
  homepage "https://github.com/alexmx/xc"
  url "https://github.com/alexmx/xc/releases/download/v1.1.2/xc-1.1.2-macos.zip"
  sha256 "01a330eabed4d8c599b3304c280d498df971119bef24bc0d7123e4484154f6d2"
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
