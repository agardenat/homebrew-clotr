class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.17.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "330d1187e9eec3610fa631daa8a1e38c632136840816346250d47c047b717364"
    sha256 cellar: :any_skip_relocation, ventura:       "a13da55759b1877783cf8294920a08c5cbefe1b9f0bb3f8667dd7d547792966a"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "be57b20cf7601891427c81cf50276c96d2a0060c6390516d440c50563c1898e5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4bc4c1b42a455ab5146a3dd00de47e89e7c013da039379395b81e264f1cda718"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.17.0/clotr_0.17.0_darwin_arm64.tar.gz"
      sha256 "29d7951a0f54c5f29ab2267acebcf59dc1ca5af7c769a267caef1e36b344a505"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.17.0/clotr_0.17.0_darwin_amd64.tar.gz"
      sha256 "1f60906ccc12307de254f8af08c196339a7f04035d5d4e43ed3a55f6f387c342"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.17.0/clotr_0.17.0_linux_arm64.tar.gz"
      sha256 "8d82490700297fb909b1e78cb6a8ed7f1b1c57cf319ed191ac2c6209d1778f18"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.17.0/clotr_0.17.0_linux_amd64.tar.gz"
      sha256 "0b962e18212d56134158b02335417bf5c6dc01cc56a8424ba63026f0b515101e"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
