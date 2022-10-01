class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  url "https://github.com/sondr3/git-ignore/releases/download/v1.2.1/git-ignore-x86_64-apple-darwin.tar.gz"
  sha256 "5f3527b907bcc595cc49ce4c002d195bb14162e64a6111455e84c337f9632f55"
  version "1.2.1"

  def install
    bin.install "git-ignore"
    man1.install "git-ignore.1"
    bash_completion.install "git-ignore.bash"
    zsh_completion.install "_git-ignore"
    fish_completion.install "git-ignore.fish"
  end

  test do
    assert_equal "git ignore 1.2.1", shell_output("#{bin}/git-ignore -V").strip
  end
end
