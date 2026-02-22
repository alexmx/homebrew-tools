class Codechat < Formula
  desc "Human-in-the-loop code review for AI agents"
  homepage "https://github.com/alexmx/codechat"
  url "https://github.com/alexmx/codechat/releases/download/v1.0.0-rc/codechat-1.0.0-rc.tgz"
  sha256 "beb159cbc171648775cd04b4829e27a37c0471b4d400778bf830143b6bdb57e3"
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
