class GitIgnore < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/git-ignore"
  conflicts_with "git-ignorers", because: "both provide the same utilities"
  conflicts_with "git-ignore", because: "provided by homebrew/core"
  version "1.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/git-ignore/releases/download/v#{version}/git-ignore-x86_64-apple-darwin.tar.gz"
    sha256 "142f61b7c2957904e9ab39e88abbab576d46f82dbe6effb27cd970268e42768c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/git-ignore/releases/download/v#{version}/git-ignore-aarch64-apple-darwin.tar.gz"
    sha256 "d9d8b9a71d7ef00415af2b5dca9fcd940afdc4c08d84b122903817569100e291"
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
