class Codechat < Formula
  desc "Human-in-the-loop code review for AI agents"
  homepage "https://github.com/alexmx/codechat"
  url "https://github.com/alexmx/codechat/releases/download/v1.1.0/codechat-1.1.0.tgz"
  sha256 "200f99b92b759fe8dd85dcba71021b4d101926ef13b4b61c0d5d5d1ca08ff7d8"
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
