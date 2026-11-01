class Llmdb < Formula
  desc "Debug any Mac or iOS Simulator app from your terminal or your AI agent"
  homepage "https://github.com/alexmx/llmdb"
  url "https://github.com/alexmx/llmdb/releases/download/v0.3.2/llmdb-0.3.2-macos.zip"
  sha256 "e8f418c40868f0c19109208ba1bd4dc2a104f8f45a337f0e87e4f58e848aaf95"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "llmdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmdb --version").strip
  end

  def caveats
    <<~EOS
      llmdb wraps lldb-dap, which ships with Xcode or the Command Line Tools.
      Run the following to verify the environment and daemon socket:

        llmdb doctor
    EOS
  end
end
