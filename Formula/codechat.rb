class Codechat < Formula
  desc "Human-in-the-loop code review for AI agents"
  homepage "https://github.com/alexmx/codechat"
  url "https://github.com/alexmx/codechat/releases/download/v1.0.0/codechat-1.0.0.tgz"
  sha256 "8202b1a7195809bb6907c5429fa82310c9b421e47f4a08bc32d159e225f952e8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codechat --help 2>&1")
  end
end
