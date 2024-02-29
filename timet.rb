class Timet < Formula
  desc "Automate your Timet fetching"
  homepage "https://github.com/sondr3/timet-rs"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/timet-rs/releases/download/v#{version}/timet-x86_64-apple-darwin.tar.gz"
    sha256 "998b1feae5224b99f5c515826873de5728e3e97a1b84e5ee3ffdfb3e425a6da1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/timet-rs/releases/download/v#{version}/timet-aarch64-apple-darwin.tar.gz"
    sha256 "da1e9c06a02215b609fc1be580dd398c1ac77d8a87a0cd9f590e557c2286108e"
  end

  def install
    bin.install "timet"
    man1.install "timet.1"
    bash_completion.install "timet.bash"
    zsh_completion.install "_timet"
    fish_completion.install "timet.fish"
  end

  test do
    assert_equal "timet #{version}", shell_output("#{bin}/timet -V").strip
  end
end
