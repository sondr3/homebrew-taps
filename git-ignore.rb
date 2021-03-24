class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  url "https://github.com/sondr3/git-ignore/releases/download/v1.1.2/git-ignore-x86_64-apple-darwin.tar.gz"
  sha256 "164e2a733826d069e54aa90040de7195334d935f45f9676d763b2a81689e7bbb"
  version "1.1.2"

  def install
    bin.install "git-ignore"
    man1.install "git-ignore.1"
  end

  test do
    assert_equal %x('#{bin}/git-ignore -V'), "git ignore 1.1.2\n"
  end
end
