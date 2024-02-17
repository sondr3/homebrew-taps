class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  url "https://github.com/sondr3/git-ignore/releases/download/v1.3.1/git-ignore-x86_64-apple-darwin.tar.gz"
  sha256 "3984c5e479971628f970043b993aabf5bde0010904a4a7be506335d1a4d71569"
  version "1.3.1"

  def install
    bin.install "git-ignore"
    man1.install "git-ignore.1"
    bash_completion.install "git-ignore.bash"
    zsh_completion.install "_git-ignore"
    fish_completion.install "git-ignore.fish"
  end

  test do
    assert_equal "git-ignore 1.3.1", shell_output("#{bin}/git-ignore -V").strip
  end
end
