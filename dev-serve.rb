class DevServe < Formula
  desc "Spin up a simple static site server with live reload"
  homepage "https://github.com/sondr3/dev-serve"
  url "https://github.com/sondr3/dev-serve/releases/download/v0.2.0/dev-serve-x86_64-apple-darwin.tar.gz"
  version "0.2.0"
  sha256 "8461343dab63765729084696d844da13fe80701f5a16670fc9c95eb1c30e8839"

  def install
    bin.install "dev-serve"
    man1.install "dev-serve.1"
    bash_completion.install "dev-serve.bash"
    zsh_completion.install "_dev-serve"
    fish_completion.install "dev-serve.fish"
  end

  test do
    assert_equal "dev-serve 0.2.0", shell_output("#{bin}/dev-serve -V").strip
  end
end
