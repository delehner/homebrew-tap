class Wisp < Formula
  desc "AI agent pipeline: PRDs to Pull Requests"
  homepage "https://github.com/delehner/wisp"
  license "MIT"
  version "0.1.22"

  on_macos do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-apple-darwin.tar.gz"
      sha256 "9ecf6d4c73de57ef33ae3f1027a3b34f3bc563798a60bae5683d3c194d4062bc"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-apple-darwin.tar.gz"
      sha256 "5bb8fcd7bb0045b876a2dd53b3113cda452d3220d10337a3f4f977b4f4ea3413"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dec3cbd5ed120346ad02a50fdc150e86a85edfcead6bc14b8fa1bd235c9eff68"
    end

    on_arm do
      url "https://github.com/delehner/wisp/releases/download/v#{version}/wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "042d83b9de0ced3dddd34afdd63a032a9a73acaf32c3d06d553e34c583e6ab7b"
    end
  end

  def install
    bin.install "wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wisp --version")
  end
end
