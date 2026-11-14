class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.69.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "67bbf77f8d70219382aceee3514eb2786f769ac3e7d82680f4f4642ea40f93c1"
    sha256 cellar: :any_skip_relocation, ventura:       "e7a57de65c31059d0adcda62c538244d71d4f4134fde9c413aeba0f1d9e77b8f"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "afc3db31aca9eb781fa13b0fe94cda4376ffd499465a60e0c78282d6e871653f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1bb7334c5c14f84cead5880b18b115f10d7c490937a81f07337b7cfd157b45ef"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.1/clotr_0.69.1_darwin_arm64.tar.gz"
      sha256 "6f79d0cb85f176b4ff12479322fb7f75cb4ad42a2f8e6673690283242fb1099f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.1/clotr_0.69.1_darwin_amd64.tar.gz"
      sha256 "491a115a1bbc9a9c4246e5e424a4677aa9c65131519b0776fe75726c087958d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.1/clotr_0.69.1_linux_arm64.tar.gz"
      sha256 "ab87acc8d5f668cf6d797d616e10f299d14225070898885faf21adf2d9c2a6ff"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.1/clotr_0.69.1_linux_amd64.tar.gz"
      sha256 "d3a2ae396676b7d1ecb4a2dbffe251c0ac69dd4cc108069e95f33de96fa4de02"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
