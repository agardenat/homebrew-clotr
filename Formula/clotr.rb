class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.44.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "104a85ffc6a82a9f3892d774b6b1e478b36975bf063f570e41b1cce8c924f69f"
    sha256 cellar: :any_skip_relocation, ventura:       "c562333b9ee20a83754588a354aba67e095ee20f6eebfa59ccd54ec638cc1377"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "23a5bcb1e0af1287080b5c4f11018d097d8fe56dc1f18937a2a96dadf3ff85e5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "31f1cdb0db61e1c3f9c5142d9561ca87c49f05db856937a2b3dd2308fea3b93f"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.44.0/clotr_0.44.0_darwin_arm64.tar.gz"
      sha256 "f7895a972e493d1328370b854be624ff6aa2c8511ddafc8c1074ba29ab0dbc15"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.44.0/clotr_0.44.0_darwin_amd64.tar.gz"
      sha256 "ac6ac82a7800b02529f92f439fcf41c1d53c3c891d8ef07869e071f5ddbdf54a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.44.0/clotr_0.44.0_linux_arm64.tar.gz"
      sha256 "f36af6dee4ac6ca15b978cf1cc4b75ef47cb79ae1e199a0fa124a2b18b517f63"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.44.0/clotr_0.44.0_linux_amd64.tar.gz"
      sha256 "a95559d8561e447988aea6affc8e23577eb1f8c549a12b80421c54a4bd0384b9"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
