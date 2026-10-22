class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.31.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "604c31591ce20396e179f9510a8f8b5483578a18bf950f11611392996a1f6785"
    sha256 cellar: :any_skip_relocation, ventura:       "0763e7c88201f07857b5b045d94e69160590b9ef761bc9d23c4d14aa7383be1a"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "f1e39d6d021d2fbb0d0e158756d811048550e77b4432581adb475b5193a74494"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e70e9769c6291b9dfc6026b100468666c069a13713785b002aa5de731a9df2f2"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.31.0/clotr_0.31.0_darwin_arm64.tar.gz"
      sha256 "dc099e4cca828da61ea60de8c0ad8f3f2c98b1b14071aeab0ac643fa619193da"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.31.0/clotr_0.31.0_darwin_amd64.tar.gz"
      sha256 "c37147b80087c604288928d7f33e0fade5c6c9e1fb167bd4cd19ef4b0f0acc38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.31.0/clotr_0.31.0_linux_arm64.tar.gz"
      sha256 "ed904d4b18ed0a6b858033108c721837e9739893396385e2ea3c84186e9f1b71"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.31.0/clotr_0.31.0_linux_amd64.tar.gz"
      sha256 "ea909e014994cfa253b389c25555d738d579898b40af8f49a4d72fdd915df3b4"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
