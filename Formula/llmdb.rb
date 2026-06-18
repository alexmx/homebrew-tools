class Llmdb < Formula
  desc "Debug any Mac or iOS Simulator app from your terminal or your AI agent"
  homepage "https://github.com/alexmx/llmdb"
  url "https://github.com/alexmx/llmdb/releases/download/v0.1.2/llmdb-0.1.2-macos.zip"
  sha256 "146fac28ef4df9c865aedd53e390932824779caa662c4738fcb3794decfa51a6"
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
