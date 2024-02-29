class Timet < Formula
  desc "Automate your Timet fetching"
  homepage "https://github.com/sondr3/timet-rs"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sondr3/timet-rs/releases/download/v#{version}/timet-x86_64-apple-darwin.tar.gz"
    sha256 "46a77e2192c9c220b7c11398fc5bf79867cc9218107c9ed3eaac711792001f3c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sondr3/timet-rs/releases/download/v#{version}/timet-aarch64-apple-darwin.tar.gz"
    sha256 "1170786ad2d832791b3e6c8754f71e8abdde23ec2c81b7c582adf5fe27469574"
  end

  def install
    bin.install "timet"
    man1.install "timet.1"
    bash_completion.install "timet.bash"
    zsh_completion.install "_timet"
    fish_completion.install "timet.fish"
  end

  test do
    assert_equal "timet #{version}", shell_output("#{bin}/timet -V").strip
  end
end
