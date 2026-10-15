class Looper < Formula
  desc "Looper CLI: terminal coding agent with any model (Anthropic, OpenAI, OpenRouter)"
  homepage "https://trylooper.app/cli"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@trylooper/cli-darwin-arm64/-/cli-darwin-arm64-0.1.2.tgz"
      sha256 "31d93e977a51e395f9f23a2e702f55b02196f1839d04c0b4dc058c453209493f"
    end
    on_intel do
      url "https://registry.npmjs.org/@trylooper/cli-darwin-x64/-/cli-darwin-x64-0.1.2.tgz"
      sha256 "b597f16449347283333646b420bb33a613e11883b04bec225659266edff111eb"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@trylooper/cli-linux-arm64/-/cli-linux-arm64-0.1.2.tgz"
      sha256 "bd3301945faaee35673ed624a190ee32d88599bdc3617623bd8a5f35874a838c"
    end
    on_intel do
      url "https://registry.npmjs.org/@trylooper/cli-linux-x64/-/cli-linux-x64-0.1.2.tgz"
      sha256 "0085c8f21ac438e6f6d0c59782747d6527fb1dcee8e60fb84d1bef3e5f1f4b21"
    end
  end

  def install
    bin.install "bin/looper"
    prefix.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/looper --version")
  end
end
