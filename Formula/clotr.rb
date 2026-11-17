class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.77.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "acbb676114a9585065af177148e09dcb86a0ff7ae05379658ff6772ba1d0e35e"
    sha256 cellar: :any_skip_relocation, ventura:       "62fad2ebd22dd56023f7a84c0585b037261a988448ceaeb2973534f91dba2672"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "9bf207dbed0bf825c202bd1aaa4b94bf6fdb1437cced859cd54b56989a5802f9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2fc9d3de2c8d4fd079f1903eb7b6eaba53173e2f7199f7f959d9f4fb2cbdf75a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.0/clotr_0.77.0_darwin_arm64.tar.gz"
      sha256 "0f8172505c728da8fb4dc267e19d322317bf4e313ae56e5e990014735484b89f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.0/clotr_0.77.0_darwin_amd64.tar.gz"
      sha256 "a52e509c755dbcac4989e5e815dc49f9fc8c610269b10ef3f7e2208b1c834a20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.0/clotr_0.77.0_linux_arm64.tar.gz"
      sha256 "22eaa6baceb63a1a1695e3c423fc7bae432dc1801dd1b359b6f96e8cdfb1065d"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.0/clotr_0.77.0_linux_amd64.tar.gz"
      sha256 "b38875d619a6c8edbc00b5a61b970a766341cda943998f41750515b545de5d72"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
