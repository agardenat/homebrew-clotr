class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.90.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "22610e6bbccade738d06bd935407e6ab5f82a7b7ebd94ff8f4fc69199c78edb6"
    sha256 cellar: :any_skip_relocation, ventura:       "e1f790333f31070f8ecaf712402e8dd70ce9aea4e57e70485acc9eff2aa196dd"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "bbadfb2c90f8b0e83aed76d48605fe3658bf5049696d7edb31d5d576d35f68be"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1438c60f36daee80eae706f00bdaf7359c2ee44bda8710f93d3f2df53cc4235b"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.0/clotr_0.90.0_darwin_arm64.tar.gz"
      sha256 "76bcd7e98d756c64218d5d455052ebc71a0e3bcf7940329a7338abca7c29e7cc"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.0/clotr_0.90.0_darwin_amd64.tar.gz"
      sha256 "4a66707574ea34f2eda72d64997e5da39bf41909a0ae96d5542180d78145e6d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.0/clotr_0.90.0_linux_arm64.tar.gz"
      sha256 "e141b61b16f693209bda67f381988fe1dceb7fb78d2a8e996d80d78ecad88ab3"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.0/clotr_0.90.0_linux_amd64.tar.gz"
      sha256 "313fd45e77052c3d787e2bc57e766e852401ad7de97b8e98ef9c05fe9284103e"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
