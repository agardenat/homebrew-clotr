class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.43.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "eac59e0bff97adf163b17142701c1667080d26227a95cabb9298b4193a05d746"
    sha256 cellar: :any_skip_relocation, ventura:       "02f419865b2957e1b9b89b97b10d03633c20ff8ebc80942b0498083a91ae4327"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "180e715d9b2db450cf82487b1e94d334acbf626cf658eaeb8e31898c1fa437ac"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2e508f5d30a84386615b5620585b22a24f013774463a66f758110790001c5588"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.0/clotr_0.43.0_darwin_arm64.tar.gz"
      sha256 "ffac74624396fc7258eed81593735064d18e8a60c728d320c97cdf4dafae6a36"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.0/clotr_0.43.0_darwin_amd64.tar.gz"
      sha256 "211f936e38264d5ccddd6a3a06009de3cd09019612ed8099befcca350f2e6abf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.0/clotr_0.43.0_linux_arm64.tar.gz"
      sha256 "01180247dad440a2594b33bf15c658074bc72c0c9fd2f18c944ce3bee48d061b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.0/clotr_0.43.0_linux_amd64.tar.gz"
      sha256 "54664a6e62eaf289d681963742c1867e681c7364268ff3d44f9658432c0ad7b9"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
