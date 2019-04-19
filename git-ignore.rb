class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  url "https://github.com/sondr3/git-ignore/releases/download/v1.0.0/git-ignore-v1.0.0-x86_64-apple-darwin.tar.gz"
  sha256 "28aaa77936075d644b83284cf8a561d35ad0a04149633a6725b57eed337914aa"
  version "1.0.0"

  def install
    bin.install "git-ignore"
    man1.install "git-ignore.1"
  end

  test do
    assert_equal %x('#{bin}/git-ignore -V'), "git ignore 1.0.0\n"
  end
end
