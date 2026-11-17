class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.76.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d60ba91d95d0be50707000bb47f57f56f24faaaef59dfc3d7e92e9bd138631a1"
    sha256 cellar: :any_skip_relocation, ventura:       "f3773cebb51fe3a4423ee9d20522f43cac61c7a7fc306d9e8d47b5189ac94124"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "f75cff133acf72675da80ba1262f4fe8480cc91f63ae824a55fe3e4c5980b66c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6a9f620ba593cae521af926b2cb202c8e60d457e2d23d0e1c7da0813f1ffcae2"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.76.0/clotr_0.76.0_darwin_arm64.tar.gz"
      sha256 "b3a804811a8adaf028de3ea3b7f33e6bb9a9d778cfdd3343619cee4ceae4ade2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.76.0/clotr_0.76.0_darwin_amd64.tar.gz"
      sha256 "727140323ae7bd93f41918f6058d44ab10af54765182c9b09d2f8d4675ab9544"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.76.0/clotr_0.76.0_linux_arm64.tar.gz"
      sha256 "635064929b8547e2723adb1ee4a3e201be239e395ddcd1b6f936a372f916364b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.76.0/clotr_0.76.0_linux_amd64.tar.gz"
      sha256 "7a853d0636a04f3129dc23c16c4824e912f54e0b6ef4d4d126de9fc81fa1adca"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
