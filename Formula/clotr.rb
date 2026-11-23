class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.85.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "cafe3c784239dc337c7361cf406d0d16a3e1177ee8e63bd1d1228261be858e39"
    sha256 cellar: :any_skip_relocation, ventura:       "08a0443ea3fa6e4f77243dbcb62c8334bb26f5061261e19867c55e69018a0ad9"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "46761aff73474cce025ec0462231562b359b2b74ce8da9d839d4aae9b33f8cfc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0ac9c6e621f6c0b110d66de440bf468cfbc0af93711d7c0f062af89ac2494f96"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.0/clotr_0.85.0_darwin_arm64.tar.gz"
      sha256 "9559f24c9ae5717815106c4952fb8e9a091410c49806bfe9c708996d49d34125"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.0/clotr_0.85.0_darwin_amd64.tar.gz"
      sha256 "92401a7d1666d9ef8540daaa6dc5aa1db1f166fea0ed13f25aa732e9e36c5e99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.0/clotr_0.85.0_linux_arm64.tar.gz"
      sha256 "68ddbf33054f2c00edbad1be164bcd671ad74945395a932156bad4e25f0c519f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.0/clotr_0.85.0_linux_amd64.tar.gz"
      sha256 "11aeaad6bdc49d0f33f1d055b84a890071807b5f7826d50b54e7af3455cc0051"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
