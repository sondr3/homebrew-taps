class Timet < Formula
  desc "Automate your Timet fetching"
  homepage "https://github.com/sondr3/timet-rs"
  url "https://github.com/sondr3/timet-rs/releases/download/v0.1.0/timet-x86_64-apple-darwin.tar.gz"
  sha256 "ad64f0d90edef62e61dcf3021062f6a537608122fc79f4f057479ddbf98ff3b1"
  version "v0.1.0"

  def install
    bin.install "timet"
    man1.install "timet.1"
    bash_completion.install "timet.bash"
    zsh_completion.install "_timet"
    fish_completion.install "timet.fish"
  end

  test do
    assert_equal "timet 0.1.0", shell_output("#{bin}/timet -V").strip
  end
end
