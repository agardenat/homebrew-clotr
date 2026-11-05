class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.56.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "305d9d5431a266ddde18de52f7436e3eb0ccafa7b7a60d2c2b5ae4be64153716"
    sha256 cellar: :any_skip_relocation, ventura:       "384c904c3fd7403e1a15a91560d681a6bf9591bcb6e81a8551fbf8a1f99803a9"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "49aee466b0c4a225fc44f724b0ee0dd12a127c9702d175d4060be693ccfba189"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b928c30944d1d47a47953c2086d99a9eb4b439141bb34dd556dc239b75a6024c"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.56.0/clotr_0.56.0_darwin_arm64.tar.gz"
      sha256 "98e0ff6a86d0bc6c458f353e8e0b427f22dae83354a73dc4c1c83a4ae1480a81"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.56.0/clotr_0.56.0_darwin_amd64.tar.gz"
      sha256 "0d0509ed1895d27e239721645be3cc647eca00888ccd829a9393994b74e778e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.56.0/clotr_0.56.0_linux_arm64.tar.gz"
      sha256 "dbebc2e4d0bfca3c6dbaf4d2eabcf060383e2ed8ce1fa9ca2e14c749927b37e0"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.56.0/clotr_0.56.0_linux_amd64.tar.gz"
      sha256 "c4820805e749239199e28955d49ee098e7a535672776334889b598e77a1c59fb"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
