class Wisp < Formula
  desc "AI agent pipeline: PRDs to Pull Requests"
  homepage "https://github.com/delehner/wisp"
  license "MIT"
  version "0.1.19"

  on_macos do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-apple-darwin.tar.gz"
      sha256 "37ad8cec60d973641485ca8bdcbb7490b8bfece8b652a3a1b214215397e78be8"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-apple-darwin.tar.gz"
      sha256 "5254aa8880fa4237025e945215b915677fda72802dbe32a6904bb869a2f25564"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "031ec9242c8d8b51ad3c914975d2ea32d723b58ee06e8be05652bcc5588dd01e"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4cfbaff4b1c6eb12ec075c3a5b6265370fdc176cf42b71053716d03c82f217a"
    end
  end

  def install
    bin.install "wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wisp --version")
  end
end
