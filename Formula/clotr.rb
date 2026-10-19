class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.26.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e7e3c93b1e16cf3da0f340305514e613d0dd9a87f8e2e4665e01f5cf8e5b40a5"
    sha256 cellar: :any_skip_relocation, ventura:       "c8135d00837f7ca61d86091c913bfe1c5c96e345ac8200624794e5c69b41928b"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "e0f15926bbee57f5a0e2cc7ce145e6284d57b63a812cb9888122d15c9d64636a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7db74a2cb5e210f29cd0719dda80781c330408fd874704e2f858ea4ea13c568f"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.26.0/clotr_0.26.0_darwin_arm64.tar.gz"
      sha256 "e18bd82318dc018cf7af59a8129f7e2fdf793789d1b2049be691a6221d4beb69"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.26.0/clotr_0.26.0_darwin_amd64.tar.gz"
      sha256 "a4d4c463cdceb9ddfdab4addefe9c94faa83ab4a91f4aeea20b10faf5d89922e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.26.0/clotr_0.26.0_linux_arm64.tar.gz"
      sha256 "53e3706fbf2b58d502f04447e4b1e8efececd60c2e53b893e549cbc89dfa7d59"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.26.0/clotr_0.26.0_linux_amd64.tar.gz"
      sha256 "3b55ad8139a76874ecb6e844d01248306ea173bab2b1a5f76eb18610c8461d1b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
