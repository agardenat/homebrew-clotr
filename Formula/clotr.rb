class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.90.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7cfd8c6d5d1910fb4c214ad0d1d19dad9c402e5edc2934d8ce42bf93d34cd6e8"
    sha256 cellar: :any_skip_relocation, ventura:       "3b7d350d9b80292befee2c51290b374ac6d8faebe7f5a16982646cfc10ff1bb3"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "dd0ea79b27bdc459fa67c002b7512d62a129295e337ffee2d5ff3844c21eaaae"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7093143066681c38536341188e6f087cd8d6cc6ee30f25b735e159061cbea9c4"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.1/clotr_0.90.1_darwin_arm64.tar.gz"
      sha256 "aa63ce65e4248115221103e6907999b291223b437ffa3af977d0fb53e3c14c3b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.1/clotr_0.90.1_darwin_amd64.tar.gz"
      sha256 "a7293da81d4b5c5891c94a553f20be968695ab357241cb4b6f715fb22b67e2c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.1/clotr_0.90.1_linux_arm64.tar.gz"
      sha256 "8b91fd6e9e39a953668a24f7fcb9fd4569aa9b9ec875860ee179bdeb6d73bf56"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.1/clotr_0.90.1_linux_amd64.tar.gz"
      sha256 "eba9d3bab5e8f8236761a7f5bb7cfd3126ab43d2a0c6fe18c0c97ccdf9ab397f"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
