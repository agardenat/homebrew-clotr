class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.71.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3787cb2f64b5e618d3709f566dbf0e398c59fb3aab442f16dcec360d0ef00692"
    sha256 cellar: :any_skip_relocation, ventura:       "c1341a1717964d29ba2f82c2a7f83a51b056b093e277247355a27ad35af9d918"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "2ae9d230504f114c96b189e2ca472b1ca9888a05c61e67039419719dbcca4aba"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "913167d2c7fc5d4adf8260a4e3ca37634813e3c033a162aacbfcf7480fafe839"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.1/clotr_0.71.1_darwin_arm64.tar.gz"
      sha256 "71b8aee6a878873fd8d03a7e86a29c026338294fba040a00568376390fb08331"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.1/clotr_0.71.1_darwin_amd64.tar.gz"
      sha256 "2806b66759e5e96a80145d9cacf04e76865167fe631b79ddd9385018ea091660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.1/clotr_0.71.1_linux_arm64.tar.gz"
      sha256 "5a9af5fac8baf7145477efb635d5bd7be3f46b8bbe04ef2d440ab754add4dead"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.1/clotr_0.71.1_linux_amd64.tar.gz"
      sha256 "d26444ba555b47b611d06dccc627eb68f588033b7726e3cf3590a584fd95bbc5"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
