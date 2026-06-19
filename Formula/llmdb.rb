class Llmdb < Formula
  desc "Debug any Mac or iOS Simulator app from your terminal or your AI agent"
  homepage "https://github.com/alexmx/llmdb"
  url "https://github.com/alexmx/llmdb/releases/download/v0.1.4/llmdb-0.1.4-macos.zip"
  sha256 "4e367dae6b2f57bc2569137947e84d0ec301468e0810a553ca9bdfd2fda74e7c"
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
