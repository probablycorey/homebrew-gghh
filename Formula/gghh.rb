class Gghh < Formula
  desc "wow"
  homepage "cool"
  url "https://github.com/probablycorey/homebrew-gghh/releases/download/v0.0.114/gh-cli_0.0.114_darwin_amd64.tar.gz"
  sha256 "8890ac5a60b1cceab4186cb2cf3129b955cb4122ce9c37aa936015139be986b1"

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
