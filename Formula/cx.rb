class Cx < Formula
  desc "Ultra-fast, native Rust autonomous AI terminal agent for DeepSeek, Gemini, Claude, OpenAI & Local LLMs"
  homepage "https://github.com/sluisr/corex"
  version "0.5.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sluisr/corex/releases/download/v0.5.0/corex-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "29071b819b1cb346f1473fcfd225fca53a817a4180f787b2f451de248deaf03b"
    else
      url "https://github.com/sluisr/corex/releases/download/v0.5.0/corex-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "5fd11ac64a8d6ec1540a76b04d609ba41635156a74aa01dd29b107c906406ac8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sluisr/corex/releases/download/v0.5.0/corex-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b45cec758d7924711503950b7030604493273a3a2a7bb83e6a199844509b604"
    end
  end

  def install
    bin.install "cx"
    bin.install "corex"
  end

  test do
    assert_match "cx 0.5.0", shell_output("#{bin}/cx --version")
  end
end
