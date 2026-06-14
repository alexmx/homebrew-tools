class Slog < Formula
  desc "Stream, filter, and query macOS and iOS logs"
  homepage "https://github.com/alexmx/slog"
  url "https://github.com/alexmx/slog/releases/download/v1.3.0/slog-1.3.0-macos.zip"
  sha256 "c02bff53c2b74f3a42be15e8501d164971833751f975eee0f4d1c87bbd8cc80e"
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
