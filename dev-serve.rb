class DevServe < Formula
  desc "Spin up a simple static site server with live reload"
  homepage "https://github.com/sondr3/dev-serve"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/dev-serve/releases/download/v#{version}/dev-serve-x86_64-apple-darwin.tar.gz"
    sha256 "81c9642e463e4becf800744e01c8d11b53190b14ec378abc9f8035eab00746af"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/dev-serve/releases/download/v#{version}/dev-serve-aarch64-apple-darwin.tar.gz"
    sha256 "0f7d6bcbb19ca51b0eac38a6f0400399df692e566b435ccdfe45810631d4555d"
  end

  def install
    bin.install "dev-serve"
    man1.install "dev-serve.1"
    bash_completion.install "dev-serve.bash"
    zsh_completion.install "_dev-serve"
    fish_completion.install "dev-serve.fish"
  end

  test do
    assert_equal "dev-serve #{version}", shell_output("#{bin}/dev-serve -V").strip
  end
end
