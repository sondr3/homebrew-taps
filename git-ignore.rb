class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  url "https://github.com/sondr3/git-ignore/releases/download/v1.2.0/git-ignore-x86_64-apple-darwin.tar.gz"
  sha256 "36d1c428bbb169f7b0fa5bfd9f2c3c8f6a262b70e7fb2c90591a63f1374be4f0"
  version "1.2.0"

  def install
    bin.install "git-ignore"
    man1.install "git-ignore.1"
    bash_completion.install "git-ignore.bash"
    zsh_completion.install "_git-ignore"
    fish_completion.install "git-ignore.fish"
  end

  test do
    assert_equal "git ignore 1.2.0", shell_output("#{bin}/git-ignore -V").strip
  end
end
