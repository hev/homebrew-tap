# Compatibility formula for existing hev/tap/kit installations.
class Kit < Formula
  desc "Compatibility package for hev"
  homepage "https://hev.dev/kit"
  url "https://github.com/hev/kit/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "674ade9461acff87696cef8454cd2abd3e6a79f7357bd60ebea476f69bd8824b"
  license "Apache-2.0"

  depends_on "hev/tap/hev"

  def install
    (pkgshare/"README").write "kit has moved to hev; use hev up.\n"
  end

  test do
    # Use Formula[] for compatibility with older Homebrew releases.
    hev = Formula["hev/tap/hev"]
    assert_equal version.to_s, hev.version.to_s
    assert_equal version.to_s, shell_output("#{hev.opt_bin}/hev --version").strip
  end
end
