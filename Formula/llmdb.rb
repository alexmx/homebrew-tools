class Llmdb < Formula
  desc "Debug any Mac or iOS Simulator app from your terminal or your AI agent"
  homepage "https://github.com/alexmx/llmdb"
  url "https://github.com/alexmx/llmdb/releases/download/v0.1.3/llmdb-0.1.3-macos.zip"
  sha256 "8c4016597c0e6caa7dbf6dfecfc0e6f6db0a65962ed719ce82f06e3f93018187"
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
