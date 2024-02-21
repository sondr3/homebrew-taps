class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/git-ignore/releases/download/v#{version}/git-ignore-x86_64-apple-darwin.tar.gz"
    sha256 "decdb652ec548172ed8f25e4d067ccc0f107220e6a6375303ad6ee7fe3d86ce9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/git-ignore/releases/download/v#{version}/git-ignore-x86_64-apple-darwin.tar.gz"
    sha256 "d2caf3a1393c2fa2759f07c9152aac4fa2d5bbb6357ca733add7565d321b60d3"
  end

  def install
    bin.install "git-ignore"
    man1.install "git-ignore.1"
    bash_completion.install "git-ignore.bash"
    zsh_completion.install "_git-ignore"
    fish_completion.install "git-ignore.fish"
  end

  test do
    assert_equal "git-ignore #{version}", shell_output("#{bin}/git-ignore -V").strip
  end
end
