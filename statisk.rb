class Statisk < Formula
  desc "A simple and opinionated static site generator"
  homepage "https://github.com/sondr3/statisk"
  version "0.2.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/statisk/releases/download/v#{version}/statisk-x86_64-apple-darwin.tar.gz"
    sha256 "63766fbc2a582da23f412c5ed165706c979090f7a280bfe0071bafd9d17d7744"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/statisk/releases/download/v#{version}/statisk-aarch64-apple-darwin.tar.gz"
    sha256 "dbc2d2149fed362f71f718345068fa43eefad4c4a981fbaaea6e54a97c062891"
  end

  def install
    bin.install "statisk"
    man1.install "statisk.1"
    bash_completion.install "statisk.bash"
    zsh_completion.install "_statisk"
    fish_completion.install "statisk.fish"
  end

  test do
    assert_equal "statisk #{version}", shell_output("#{bin}/statisk -V").strip
  end
end
