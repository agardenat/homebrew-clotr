class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.22.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d6eae35109120f59f8a546e234e257cb70b2af363c7f12c314849c022b0d8b98"
    sha256 cellar: :any_skip_relocation, ventura:       "fab3a51a61c2d9e7b2fc25a1c9f455aabebecd049133b5bba741e125e6265ed4"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "ebdc8b074bbd5d9cb87015cda0cd6a685eed07b41cbb47c8e40efba8b947751c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a232d2f42fb1da856447b9a1ef33dee4702e9d0e716e8cc1a96bfac17006d5e3"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.22.0/clotr_0.22.0_darwin_arm64.tar.gz"
      sha256 "853ebfce23924968308f1e388e1da90b1603760007a81904685cfd5f6e1bee81"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.22.0/clotr_0.22.0_darwin_amd64.tar.gz"
      sha256 "0bfa759573b1fe7d3dc384817c6d04f2840609d6f6d2086dcb9f426d9beba7eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.22.0/clotr_0.22.0_linux_arm64.tar.gz"
      sha256 "9385e8f66ab56d9120501b26dfd91bb3840d8269cd788f83dd0dc55f9ab8d892"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.22.0/clotr_0.22.0_linux_amd64.tar.gz"
      sha256 "76b96ae95fc6fe394a86e3d4e966a92897d499e7ff9d19ae813e25ba9bcff29f"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
