class Llmdb < Formula
  desc "Debug any Mac or iOS Simulator app from your terminal or your AI agent"
  homepage "https://github.com/alexmx/llmdb"
  url "https://github.com/alexmx/llmdb/releases/download/v0.3.1/llmdb-0.3.1-macos.zip"
  sha256 "ea686c2f09fffd184fc7efd42f370bb17af2c2ef9e76ecab0ab44b539e810cec"
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
