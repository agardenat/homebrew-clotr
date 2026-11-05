class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.55.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "ac861361d003802de56f7db79d6c957fd52d386cd1689ae3674b452e86e63038"
    sha256 cellar: :any_skip_relocation, ventura:       "647717943c286b90a159331ed8ca25e29fa5d06e47120b333d8cc511a1aa7c7a"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "dc23722ee94caef6aa316241c1e36a01ae49cd8b4cc1ae7ff54320770bceade0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a83081cd4d875acc58e10f11248bc87c3f4bf1de23d944ea5c156868d21ad0fb"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.55.0/clotr_0.55.0_darwin_arm64.tar.gz"
      sha256 "e3bc8093a0bfbf02807f3c92ef06d8678fd68a7f8642e4cf961256e774814fb0"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.55.0/clotr_0.55.0_darwin_amd64.tar.gz"
      sha256 "2a8ec40817004471ebe124e69118da54eba1a3a1365296f422a1131e1927f9d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.55.0/clotr_0.55.0_linux_arm64.tar.gz"
      sha256 "6292a21e275b82b7f896f9019c4199fe9db0305bf96320cb6b6b4e4e560d1c15"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.55.0/clotr_0.55.0_linux_amd64.tar.gz"
      sha256 "fa3ad1920e2b276dfa7789fa428c16107270082f9ea879a00841ab855b6dd56c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
