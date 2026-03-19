class Wisp < Formula
  desc "AI agent pipeline: PRDs to Pull Requests"
  homepage "https://github.com/delehner/wisp"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wisp --version")
  end
end
