class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.71.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "63c5cc68783a11b0e855dee7362cea91c81a5e26622b207e3dcd8a1eccc13009"
    sha256 cellar: :any_skip_relocation, ventura:       "348296566e81bdebdad8a91d527f843bb533e5a2a79eb6b7715301b31cdcf299"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "53c00db4a5f93053ce2360a57cbc2d7ec7994a45f14dd4e7c04ffbbc58f03678"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "203685ff40c9a2d5e2b384b5a47d865bccd9ec6555ef64089f04644b72b0da9a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.0/clotr_0.71.0_darwin_arm64.tar.gz"
      sha256 "57c156a344ffdb4188361123767293bca74fb09a0363515ebb670addb5ebbbf8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.0/clotr_0.71.0_darwin_amd64.tar.gz"
      sha256 "b50e190a44248caa5384ff18b5a0f98e4f8a862096f5ca53e7854002ee9227b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.0/clotr_0.71.0_linux_arm64.tar.gz"
      sha256 "4323febe05753429f6563aa49cfe8d21f34deeecc85fa6c1d56dc4f5f8f4bf72"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.71.0/clotr_0.71.0_linux_amd64.tar.gz"
      sha256 "adad4cbb00e121f669faf8a8feaee491e7aa8af8a5ea7eb5ae108f66416c6484"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
