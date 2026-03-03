class Codechat < Formula
  desc "Human-in-the-loop code review for AI agents"
  homepage "https://github.com/alexmx/codechat"
  url "https://github.com/alexmx/codechat/releases/download/v1.0.1/codechat-1.0.1.tgz"
  sha256 "b29efe77550da86997e9f277186637683e1b7c67db759f945d5372eaf6fa967d"
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
