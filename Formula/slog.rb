class Slog < Formula
  desc "Stream, filter, and query macOS and iOS logs"
  homepage "https://github.com/alexmx/slog"
  url "https://github.com/alexmx/slog/releases/download/v1.5.0/slog-1.5.0-macos.zip"
  sha256 "7add647acc88d69cb704ffe49143646c5937bdf92b2eaa81082a4e30bee26f63"
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
