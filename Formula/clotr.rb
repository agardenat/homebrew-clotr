class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.88.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7e6d2a6d3c1a6729877f6d133b712b6add455785ff998eddb7f833131eed6bd3"
    sha256 cellar: :any_skip_relocation, ventura:       "7c7371b2bb169f57817156e971cde1e6e8f80facaee2c6569f5114fa8f049d2c"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "3b38c313214e3d62ca06641e5ab76f4bc91f968514f02d34b81c92fd17c9741e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1954cf1742848697f701cbb9a507d27e1be791633b0d125d661da109068bb420"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.0/clotr_0.88.0_darwin_arm64.tar.gz"
      sha256 "d7625c8626104004445007c39868e36627feef67e4d35dff49bbca19cfdc4483"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.0/clotr_0.88.0_darwin_amd64.tar.gz"
      sha256 "19938a24f9fa1e6a5081ecbdcaed1cf85cbcd7b8f7614784b3203d4378c6e929"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.0/clotr_0.88.0_linux_arm64.tar.gz"
      sha256 "ca7eef23d3da0b35f70d1dec882840bbb036bbc5954e95360cc7baf80f58f3e8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.0/clotr_0.88.0_linux_amd64.tar.gz"
      sha256 "8b3ae10ce2ce7464ee2bbb4ee60ca9ffc9c2b73292041940c075ce27f5f92d27"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
