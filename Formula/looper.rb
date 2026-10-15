class Looper < Formula
  desc "Looper CLI: terminal coding agent with any model (Anthropic, OpenAI, OpenRouter)"
  homepage "https://trylooper.app/cli"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@trylooper/cli-darwin-arm64/-/cli-darwin-arm64-0.1.1.tgz"
      sha256 "2f18dca0bfea0217e31f3a065100331b0faa8e8f2b62e28f762f0bc4a6c22874"
    end
    on_intel do
      url "https://registry.npmjs.org/@trylooper/cli-darwin-x64/-/cli-darwin-x64-0.1.1.tgz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@trylooper/cli-linux-arm64/-/cli-linux-arm64-0.1.1.tgz"
      sha256 "004293b8922c3e754eaa22a92d5bb1cac2f1a3beb47cbe35d9846054cfe5e40e"
    end
    on_intel do
      url "https://registry.npmjs.org/@trylooper/cli-linux-x64/-/cli-linux-x64-0.1.1.tgz"
      sha256 "baa379b4b38cbfcfc216cced2d6d38ae46af5f3c8efb98b481d3ae3b9f406be9"
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
