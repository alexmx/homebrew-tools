class Slog < Formula
  desc "Stream, filter, and query macOS and iOS logs"
  homepage "https://github.com/alexmx/slog"
  url "https://github.com/alexmx/slog/releases/download/v1.1.0/slog-1.1.0-macos.zip"
  sha256 "91da417238429571e76f9ac56e2531c9d571249bddd745c1623985b2d95c0506"
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
