class Gghh < Formula
  desc "wow"
  homepage "cool"
  url "https://github.com/probablycorey/homebrew-gghh/releases/download/v0.0.51/gghh_0.0.51_darwin_amd64.tar.gz"
  sha256 "d3d7c5a2f09d3a6e7ace29d898932af984a62bf97f87dd72699258d0b4dd8bf6"

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
