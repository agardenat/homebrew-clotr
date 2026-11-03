class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.49.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "4044191e6ec2b8495f8bd132b36fff18eab369c5968a604590d6c05a33565b84"
    sha256 cellar: :any_skip_relocation, ventura:       "546c17f6c6d39f61509f759152f3ec2619eed205df956318703efd6075c17179"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "55424171637a1ae2ea84204e435a2af55738ad5e33a0da8cc3c3b764b04fd88f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "79e13fd2024232960b8f48cacbbdfd84eb355807e150c826252b22f773a309d2"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.49.0/clotr_0.49.0_darwin_arm64.tar.gz"
      sha256 "ea832ca142aaf0e1779bf50c08ef1431d847ce98b2c2827edb508e0b6cb1dee7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.49.0/clotr_0.49.0_darwin_amd64.tar.gz"
      sha256 "b820001e344698c17b280e6e972eb277cd1039eab357bc39b1f6a7e2c31cd239"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.49.0/clotr_0.49.0_linux_arm64.tar.gz"
      sha256 "8b6bd079932249911d69bf5dbe7a5c84bb270e276e0965efc90e816e74e21275"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.49.0/clotr_0.49.0_linux_amd64.tar.gz"
      sha256 "bebb597a01a8754773e88dc0cd6845dd01903546688b024d81b98dc5c4044be1"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
