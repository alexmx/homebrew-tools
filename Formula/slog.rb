class Slog < Formula
  desc "Swift CLI tool for intercepting and filtering macOS/iOS logs"
  homepage "https://github.com/alexmx/slog"
  url "https://github.com/alexmx/slog/releases/download/v1.0.0-rc/slog-1.0.0-rc-macos.zip"
  sha256 ""
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
