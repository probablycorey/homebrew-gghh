class Gh < Formula
  desc "wow"
  homepage "cool"
  url "https://github.com/probablycorey/homebrew-gghh/releases/download/v0.0.51/gghh_0.0.51_darwin_amd64.tar.gz"

  bottle :unneeded

  def install
    bin.install "gghh"
    (bash_completion/"gh.sh").write `#{bin}/gh completion -s bash`
    (zsh_completion/"_gh").write `#{bin}/gh completion -s zsh`
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
