class Slog < Formula
  desc "Stream, filter, and query macOS and iOS logs"
  homepage "https://github.com/alexmx/slog"
  url "https://github.com/alexmx/slog/releases/download/v1.0.0/slog-1.0.0-macos.zip"
  sha256 "f5cca4a91714b1b9308df4ef61aea165063f3148a4674869489600436b63c055"
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
