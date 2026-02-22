class Xc < Formula
  desc "A better way to run xcodebuild"
  homepage "https://github.com/alexmx/xc"
  url "https://github.com/alexmx/xc/releases/download/v1.0.0/xc-1.0.0-macos.zip"
  sha256 "aeab9d1c7d088bb1178ebe631c3f570620b785a82a500219eab9a56beb25530a"
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
