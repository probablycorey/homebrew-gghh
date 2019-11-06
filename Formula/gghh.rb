class Gghh < Formula
  desc "wow"
  homepage "cool"
  url "https://github.com/probablycorey/homebrew-gghh/releases/download/v0.0.61/gghh_0.0.61_darwin_amd64.tar.gz"
  sha256 "64e8c916d7fbcc0931ead097fcf35c34a9bd2021cece50730893d2800375bed7"

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
