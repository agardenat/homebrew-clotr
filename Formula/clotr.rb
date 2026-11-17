class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.78.4"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e367c5b823acef13b9ffa195217734e0a9dfc137d0fd56dddc8db8f72b887f87"
    sha256 cellar: :any_skip_relocation, ventura:       "9bf5edf505465de7b2a14f113a42eb8496b8080ad486cdafd67c987a0c3cbe72"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "c66b47fd76c13895ff8b59f85f95d298aa04529714ce78e48bc86c070938c7dc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "37115250f31e1ffb46319615a131ed9933ef70281be3eb079ee89debe2262557"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.4/clotr_0.78.4_darwin_arm64.tar.gz"
      sha256 "30bee9a6cb174761d8295ae259aebd8da4e2edcaea4c14d830d57f4d131f7088"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.4/clotr_0.78.4_darwin_amd64.tar.gz"
      sha256 "4f9dcef12650208f65e907c24780dd83f61f6de62d87dc4b6465ffb198f7af93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.4/clotr_0.78.4_linux_arm64.tar.gz"
      sha256 "bf07be46d4200dfd7fd5440e6b895e53ececd8f37099ef5e9c8fcac13ee44dd4"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.4/clotr_0.78.4_linux_amd64.tar.gz"
      sha256 "44cb7d259c20df88810c0ba1baee31986fa9864679a7775d5d6acacb033587a5"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
