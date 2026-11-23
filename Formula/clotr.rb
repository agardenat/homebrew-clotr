class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.85.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2767d1996ba666e48335c2d6a3991db6638c0125eea830e4f72c4c796d727d4b"
    sha256 cellar: :any_skip_relocation, ventura:       "b462084c15069626abdc8354e92564d2d10aec16f13404852faa1581ce27ddf6"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "ac878bef872e0a1a4435cdee21fec187148501e1c4cbe1c84ce438c466abae6a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9d3cdd1c0d0dc6ab51d7ebf86ca0262115c76714e8b4de3a1726719ce1a117d6"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.1/clotr_0.85.1_darwin_arm64.tar.gz"
      sha256 "af4ad00669d8a4200329d96a350fb40a66771e029423355ec2883a8a2d4fb97f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.1/clotr_0.85.1_darwin_amd64.tar.gz"
      sha256 "9563c1e2fdde28a4f228698023592e2e0f3ebfbc6f681348e4038e497fa072e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.1/clotr_0.85.1_linux_arm64.tar.gz"
      sha256 "d39db2a47916b25ef23c5612fa0c1bb37f724b314a31f7f49ff4484e1f91748a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.85.1/clotr_0.85.1_linux_amd64.tar.gz"
      sha256 "5ff690fe2ae0c5754b98437cbbe5d41231417194a38bdf531523646c8b38d31d"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
