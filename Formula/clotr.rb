class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.32.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3f5a31385f82c5e32b801d12c9a71202d180454a641b35ac79ad1deb03ab1736"
    sha256 cellar: :any_skip_relocation, ventura:       "a8cec460a62599e3853950a8d6eb01274538e8a1b75cebdd96a65aec3f8c927e"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "f21c3d81d629e59f3468f42e51bda90457f52df2eaa4c79e3276f5664be6018d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a525cf16eb8d4a8abba5537d5655dd66ad63b45282ffc04420378afaddca475"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.32.0/clotr_0.32.0_darwin_arm64.tar.gz"
      sha256 "a2385851a6a8f2ed3b2aeb1e0a5fcf7af32106784605e16c392ab3676ccd41fe"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.32.0/clotr_0.32.0_darwin_amd64.tar.gz"
      sha256 "cfbc2ef1e0091a6984c0a14f1f25711281fb6dc54d606a1a1ae93b3772891820"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.32.0/clotr_0.32.0_linux_arm64.tar.gz"
      sha256 "32542d040d049d43f6cc13af0148ff4382f25f55d9998f0dc5215d505abef00c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.32.0/clotr_0.32.0_linux_amd64.tar.gz"
      sha256 "0bb2314e5f031ee174380f815aeadb8e8acb8ffce6cf21d6decbd1a6716d38fb"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
