class Wisp < Formula
  desc "AI agent pipeline: PRDs to Pull Requests"
  homepage "https://github.com/delehner/wisp"
  license "MIT"
  version "0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-apple-darwin.tar.gz"
      sha256 "4c8c20659acf65158df5f03f4ad1fef60008800854c27283f9569f0e575aebcf"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-apple-darwin.tar.gz"
      sha256 "d37fbc7927632050e5d3c462a114dcdd0eb6895ece40d2c8ad21a00ed1a598c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdab4ede11804a2f8227e7bf09709b2f8e41ef4c167f4a0f89cabfcd048b9f2e"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4b66b83d6c3356db272a3dc45aa3f18790eacf438e8a8ce726a25423f090ae2"
    end
  end

  def install
    bin.install "wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wisp --version")
  end
end
