class Xc < Formula
  desc "A better way to run xcodebuild"
  homepage "https://github.com/alexmx/xc"
  url "https://github.com/alexmx/xc/releases/download/v1.2.2/xc-1.2.2-macos.zip"
  sha256 "f021b778bac9bb06e0bed45b59aa156bd61c13f1c83e0eba504cc1b062d793ed"
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
