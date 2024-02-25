class HumanIds < Formula
  desc "Quickly and easily list and fetch .gitignore templates from www.gitignore.io"
  homepage "https://github.com/sondr3/human-ids"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/human-ids/releases/download/v#{version}/human-ids-x86_64-apple-darwin.tar.gz"
    sha256 "3992c99d0eda934f5a8b0315713f50cfec87f082a99ea3221470a7fc70adfee9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/human-ids/releases/download/v#{version}/human-ids-aarch64-apple-darwin.tar.gz"
    sha256 "cf209d20ceecdb0a3df7035df50a7a8b6c621779228030742f73ccfc3a4103f3"
  end

  def install
    bin.install "human-ids"
    man1.install "human-ids.1"
    bash_completion.install "human-ids.bash"
    zsh_completion.install "_human-ids"
    fish_completion.install "human-ids.fish"
  end

  test do
    assert_equal "human-ids #{version}", shell_output("#{bin}/human-ids -V").strip
  end
end
