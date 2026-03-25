class Wisp < Formula
  desc "AI agent pipeline: PRDs to Pull Requests"
  homepage "https://github.com/delehner/wisp"
  license "MIT"
  version "0.1.18"

  on_macos do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-apple-darwin.tar.gz"
      sha256 "b9dfc258f7ab566760d8b00da9d864dd5c4e8c864c9e62e7d6fb1b40478aceb9"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-apple-darwin.tar.gz"
      sha256 "43253530fd48e58c8778e60e25d84d858733f7a18fe0c6fdc32a3b9d8ebcb4f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29de257c0ed1db09139cec7db5fdf07a637047cb8c4b137597ee0183293fc667"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "356d587139b03bb57d804355b3106a8de339c4d1b1c158e389f60eec534ce2e1"
    end
  end

  def install
    bin.install "wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wisp --version")
  end
end
