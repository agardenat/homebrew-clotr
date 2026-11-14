class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.70.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "71f0a85c5d0ded5e8d717d96adeb715ae8d0cbdb72e1917f6f35054d0d637955"
    sha256 cellar: :any_skip_relocation, ventura:       "d2858fdc0f6b3855e89780ae8692ebf000a37fde1d32161c9dbb9eaea4be3a7d"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "0585ec4412f25a6ec8163e1117debe214ebd0ae7045e81137b02380ab1d2f345"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ae37b6dd3a0d6ed628339062d6749cb6bcb599732786bfebaae2d7e7aea70b3f"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.1/clotr_0.70.1_darwin_arm64.tar.gz"
      sha256 "3f27107030b411854915fe371d59df0d2abeb0fdc202096b52e96a76e00cedce"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.1/clotr_0.70.1_darwin_amd64.tar.gz"
      sha256 "836ef74989e0e366fa449a63f6924db56a4a53f563361c8a729c07a633dfc7cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.1/clotr_0.70.1_linux_arm64.tar.gz"
      sha256 "58b18e60cf4a74ce67d345cd7f13819e06701b1770759e5cd83d19d3baf54e5a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.1/clotr_0.70.1_linux_amd64.tar.gz"
      sha256 "778fe60cb860242fe27d2201d8bf26550bd34b7a6c2702501e1d42f07321e39a"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
