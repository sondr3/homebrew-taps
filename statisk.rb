class Statisk < Formula
  desc "A simple and opinionated static site generator"
  homepage "https://github.com/sondr3/statisk"
  version "0.2.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/statisk/releases/download/v#{version}/statisk-x86_64-apple-darwin.tar.gz"
    sha256 "c7512b648fc39c8467e6f8d4c2a7c1f07ec2a8f55aca1a056a9c7967b7c5e03d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/statisk/releases/download/v#{version}/statisk-aarch64-apple-darwin.tar.gz"
    sha256 "b4c76266fe06d562a9f62205398bff57b9ed48b37bf7c94246d5d415e1de19c3"
  end

  def install
    bin.install "statisk"
    man1.install "statisk.1"
    bash_completion.install "statisk.bash"
    zsh_completion.install "_statisk"
    fish_completion.install "statisk.fish"
  end

  test do
    assert_equal "statisk #{version}", shell_output("#{bin}/statisk -V").strip
  end
end
