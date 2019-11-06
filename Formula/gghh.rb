class Gghh < Formula
  desc "wow"
  homepage "cool"
  url "https://github.com/probablycorey/homebrew-gghh/releases/download/v0.0.65/gghh_0.0.65_darwin_amd64.tar.gz"
  sha256 "3b7a1e3b73f9e7098f14748c13953fc35976e61ad583bd9904c91308b0abb3bc"

  bottle :unneeded

  def install
    bin.install "gghh"
    (bash_completion/"gghh.sh").write `#{bin}/gghh completion -s bash`
    (zsh_completion/"_gghh").write `#{bin}/gghh completion -s zsh`
  end

  test do
    help_text = shell_output("#{bin}/gghh --help")
    assert_includes help_text, "Usage:"
  end
end
