class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.59.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "be66e6c4f1c0dc17b13372d61aebcbf1bc3d2cfdc00f450684fc6995b9b65d29"
    sha256 cellar: :any_skip_relocation, ventura:       "09074e690b768f074c19038bede969f5c2eabbef76e729262f9bd57ec7361063"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "5352d37bc30d5e74fb6a71186e3fc477cd63f56eee9494515de2a31356114e9b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e8a5e6cb16fe3e9ab7c9ce8280af07a3ffcc17a8d4e6659b3228f32728e8ad4b"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.59.0/clotr_0.59.0_darwin_arm64.tar.gz"
      sha256 "2a3866131560ec2b8f5ac68ab291c623dd6e6309ac202be6300bdc11104eeddd"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.59.0/clotr_0.59.0_darwin_amd64.tar.gz"
      sha256 "9f0786746db601301a8a01a6028eb274493a50ae732836093b9bbabf5b25219c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.59.0/clotr_0.59.0_linux_arm64.tar.gz"
      sha256 "96fc4b50e174bab5085e973f7d2f12e4e5ebb2e05cca88259395c93f840fb616"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.59.0/clotr_0.59.0_linux_amd64.tar.gz"
      sha256 "541e78dba675f8ace8e566adcd1c87e2c4608b721a2d74dec69b15980c86beac"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
