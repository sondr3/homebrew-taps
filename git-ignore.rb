class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  url "https://github.com/sondr3/git-ignore/releases/download/v1.1.1/git-ignore-x86_64-apple-darwin.tar.gz"
  sha256 "66ca0f98dce68319aaaa6ace9b0d7b1b5a17f95c9a60cbabeb57c83b55686d10"
  version "1.1.1"

  def install
    bin.install "git-ignore"
    # man1.install "git-ignore.1"
  end

  test do
    assert_equal %x('#{bin}/git-ignore -V'), "git ignore 1.1.1\n"
  end
end
