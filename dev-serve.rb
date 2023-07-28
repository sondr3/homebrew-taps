class DevServe < Formula
  desc "Spin up a simple static site server with live reload"
  homepage "https://github.com/sondr3/dev-serve"
  url "https://github.com/sondr3/dev-serve/releases/download/v0.1.2/dev-serve-x86_64-apple-darwin.tar.gz"
  sha256 "8de1529ce81889cb879da72f4fefea7929db7fc8313ef5ed48b0f3f2e43a15cb"
  version "0.1.2"

  def install
    bin.install "dev-serve"
    man1.install "dev-serve.1"
    bash_completion.install "dev-serve.bash"
    zsh_completion.install "_dev-serve"
    fish_completion.install "dev-serve.fish"
  end

  test do
    assert_equal "dev-serve 0.1.2", shell_output("#{bin}/dev-serve -V").strip
  end
end
