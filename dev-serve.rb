class DevServe < Formula
  desc "Spin up a simple static site server with live reload"
  homepage "https://github.com/sondr3/dev-serve"
  url "https://github.com/sondr3/dev-serve/releases/download/v0.1.0/dev-serve-x86_64-apple-darwin.tar.gz"
  sha256 "7933117f04ec4d6413060963bced22a8ffda0e1155e011a08f90f57da2b54cc6"
  version "0.1.0"

  def install
    bin.install "dev-serve"
    man1.install "dev-serve.1"
    bash_completion.install "dev-serve.bash"
    zsh_completion.install "_dev-serve"
    fish_completion.install "dev-serve.fish"
  end

  test do
    assert_equal "dev-serve 0.1.0", shell_output("#{bin}/dev-serve -V").strip
  end
end
