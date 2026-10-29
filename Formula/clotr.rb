class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.47.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e8d9825f6b8a9d1755da79e94fef5b6b3af6e123375b0d44c7f367c5b6e034fb"
    sha256 cellar: :any_skip_relocation, ventura:       "71755f7e888ad9da3bcbb0841d09531d20f6105d09c0c09cde58280967346013"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "bd4ba300457c369875df27f09415209c7105d0980e584fbe15ae893a750d3dfe"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "18ff461f427f630ab607c8bd2c4e101c6ee01c0f630b3fafbfbb49c328be3812"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.1/clotr_0.47.1_darwin_arm64.tar.gz"
      sha256 "1ae42498d8094c1d4a274aa5ffb4569fe925e7296cfc7c7241015fb16d01323c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.1/clotr_0.47.1_darwin_amd64.tar.gz"
      sha256 "ba36feacd922ef441c2162e59578dcc025131eee951c3b7650a2f4e1f70ce946"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.1/clotr_0.47.1_linux_arm64.tar.gz"
      sha256 "cfe2eb161592e32a70ffa97562d7cc739dba1209ccdd52afcc14be212fe702bf"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.1/clotr_0.47.1_linux_amd64.tar.gz"
      sha256 "45510f965bb9edaf9493ee8a02e5e679faa30c5a54507993ad387341dafd0409"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
