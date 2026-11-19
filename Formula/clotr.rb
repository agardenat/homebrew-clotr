class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.83.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "61fbf4e42d43a5d50504cab27704a133ceaa70bae751955096c13bb2cc7af443"
    sha256 cellar: :any_skip_relocation, ventura:       "74f712e11e724dbb6750fd36c10e4e0118dcd4bdca42c58f6454c74cd1f1c4f9"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "db419f98424a6201e8a7571ba0af33ac8010a5847bfaaf26908aa4c7b67a779e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "445d865cceb8de3e74f7994bf9b40760f18f5e06cc99c53588102a79773c353a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.1/clotr_0.83.1_darwin_arm64.tar.gz"
      sha256 "19e1ea36903c5acd58173261aa2555fa5d8193ef06f1f64b80906583f065965c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.1/clotr_0.83.1_darwin_amd64.tar.gz"
      sha256 "16483fab567e7a97bda917d63a5f330529e60908d1584c3e83d80e66d6e6bcc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.1/clotr_0.83.1_linux_arm64.tar.gz"
      sha256 "abccf6d5238aba58d34444b367ca819b6b2005a247bf2412e6041dc8e3236efe"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.1/clotr_0.83.1_linux_amd64.tar.gz"
      sha256 "5091c9e0c038e3e5b6c43bdae70320303923ffc3101473364be67ed37047754e"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
