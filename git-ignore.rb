class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  url "https://github.com/sondr3/git-ignore/releases/download/v1.0.0-pre/git-ignore-v1.0.0-pre-x86_64-apple-darwin.tar.gz"
  sha256 ""
  version "1.0.0-pre"

  def install
    bin.install "git-ignore"
    man1.install "git-ignore.1"
  end

  test do
    assert_equal %x('#{bin}/git-ignore -V'), "git ignore 0.2.0\n"
  end
end
