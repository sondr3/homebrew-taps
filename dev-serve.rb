class DevServe < Formula
  desc "Spin up a simple static site server with live reload"
  homepage "https://github.com/sondr3/dev-serve"
  url "https://github.com/sondr3/dev-serve/releases/download/v0.1.1/dev-serve-x86_64-apple-darwin.tar.gz"
  sha256 "973a627d4abc89dd997a9b2ce6af42e48797964908ffb7828cfac4ec210839b5"
  version "0.1.1"

  def install
    bin.install "dev-serve"
    man1.install "dev-serve.1"
    bash_completion.install "dev-serve.bash"
    zsh_completion.install "_dev-serve"
    fish_completion.install "dev-serve.fish"
  end

  test do
    assert_equal "dev-serve 0.1.1", shell_output("#{bin}/dev-serve -V").strip
  end
end
