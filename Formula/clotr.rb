class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.74.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2cd4a8074700eb4e5b3df256330449ee7a2c82f6690499bb8506c4f75f5c1c41"
    sha256 cellar: :any_skip_relocation, ventura:       "b4e54d0a9e5508da01d865449dc06197558aeab170b5fb634cc56c5068fcaafe"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "af4b0e7b390b36d379d31f4f3eed506e8ba85be57b1c1c0c85ef653be688bceb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2fda14220410dc41176f4e3cc13be11ffbc59f0ec4d7e6b6a42aa38cd199aed1"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.0/clotr_0.74.0_darwin_arm64.tar.gz"
      sha256 "142fc3707a619aaeefc31a157af065f248f430cb0430ca8c9e299cee392c0e11"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.0/clotr_0.74.0_darwin_amd64.tar.gz"
      sha256 "5216e389e4cd4f0d44db4d5ea903ef9f741c117f146191317d5b472e5f446b29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.0/clotr_0.74.0_linux_arm64.tar.gz"
      sha256 "bbaf5797c66e9154756f795febb50c2e20190b1f02fc8ab5b9f42fdd473c0f54"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.0/clotr_0.74.0_linux_amd64.tar.gz"
      sha256 "bba89eb0bd07e2c2f02bc0d288399db62c3e6f72890a91d0ae77b2a556095153"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
