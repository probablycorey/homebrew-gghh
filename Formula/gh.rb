class Gh < Formula
  desc "wow"
  homepage "cool"
  url "https://github.com/probablycorey/homebrew-gghh/releases/download/v0.0.26/darwin_amd64.tar.gz"
  sha256 "5c9f3862e1bb9ab541ea0a958d4b1391e7b4ea15c0071cb2ac306afc0e8919b2"

  bottle :unneeded

  def install
    bin.install "gh"
    (bash_completion/"gh.sh").write `#{bin}/gh completion -s bash`
    (zsh_completion/"_gh").write `#{bin}/gh completion -s zsh`
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
