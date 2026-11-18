class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.80.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f8d5d7b29f73301bf0b78b3e7d742e4e8437c10998f27d659048b01f79cf723b"
    sha256 cellar: :any_skip_relocation, ventura:       "efabe2f7f1af6fa25ec9abc760956d2a8751fe1064c832c75579f23f4a2548ed"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "1d318181afd81c44613c1e05589f8f034f56810b960e867602d14cea834b8ca4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aca05930af64ff16c5dd69ba0dbbf9c6d90bf2eec6dba738b873fcd8487e0312"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.2/clotr_0.80.2_darwin_arm64.tar.gz"
      sha256 "35c62c4889fa858c7550b0f0ac8cd1fc0d2b244c212c671037626df78d57ea6a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.2/clotr_0.80.2_darwin_amd64.tar.gz"
      sha256 "832c562b2bec8e705f313e4b5e24080d511551e5378a25b7d014b9fc4c107824"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.2/clotr_0.80.2_linux_arm64.tar.gz"
      sha256 "c0be02f1f9f1a4378c3813b99b50cb2da6099e412503774e8eefa3c552c5bc16"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.2/clotr_0.80.2_linux_amd64.tar.gz"
      sha256 "72eee0ead39fd566090b450218e9036e12f99943719c4efcf886e8b82346cf7d"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
