class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.74.4"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "4d2ecb0780664e6a22123d1a047d7cbdf74d50339157f31292dbafafe99e436e"
    sha256 cellar: :any_skip_relocation, ventura:       "35e01ecea7dadb88956f1cf897936962dace2826eaf7bc520dc8c90d864ef4f5"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "2de095a5b0a07dabdb322c0a68ab07085ce808f01c1f4fc3444b3c0790e0d3ad"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "560afe71d1bd4f7131673a3d14072ff2cd42d5d8e5906eac52693e483cb10cbe"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.4/clotr_0.74.4_darwin_arm64.tar.gz"
      sha256 "68287272d7e5f0c1a0d0d12cd93e507c245bff77e94006e2732d4aed758a246a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.4/clotr_0.74.4_darwin_amd64.tar.gz"
      sha256 "ae58e68eb9264a97cffe9a32de90e68db2c309288f89fe63077bc0485b6e0f19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.4/clotr_0.74.4_linux_arm64.tar.gz"
      sha256 "8af4092feb966946af634b3c5fdf5c95ea754913f6ba07adf9240a5ffb41b352"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.4/clotr_0.74.4_linux_amd64.tar.gz"
      sha256 "4c0c133a4108a88218f189cd7510c3cde0b8a5f381a51f9814ad5a67c6e02bd6"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
