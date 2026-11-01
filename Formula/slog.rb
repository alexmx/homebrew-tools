class Slog < Formula
  desc "Stream, filter, and query macOS and iOS logs"
  homepage "https://github.com/alexmx/slog"
  url "https://github.com/alexmx/slog/releases/download/v1.7.0/slog-1.7.0-macos.zip"
  sha256 "e682a56b6d7a5c1590d48da643f215a66cc9b3b5a3e9f499ac5b3eb202f4c23a"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "slog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slog --version").strip
  end

  def caveats
    <<~EOS
      slog may require Full Disk Access to read all log sources.
      Run the following to check system requirements:

        slog doctor
    EOS
  end
end
