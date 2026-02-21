class Xc < Formula
  desc "A better way to run xcodebuild"
  homepage "https://github.com/alexmx/xc"
  url "https://github.com/alexmx/xc/releases/download/v1.0.0-rc/xc-1.0.0-rc-macos.zip"
  sha256 "d631555e29ec648994820b2f88f8afdac745ead724ec9dc224b9649c3c3fa81f"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "xc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xc --version").strip
  end
end
