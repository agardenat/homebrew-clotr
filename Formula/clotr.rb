class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.83.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c744be7ac966b2a42b60569ac7f706277d25b2541f5762acaa6763ef2517557e"
    sha256 cellar: :any_skip_relocation, ventura:       "dc0061c361d7a37ec68a46546fe1859e58ec931d42096e36a05c016daf8c29c7"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "e56abb2e8c6e36be5895d5a3ac427eaabca357d0499493758d5b1f497bab0f60"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "735383ae7f66141c1ddf597bad1d10bf07d41022589a72fdbda82be74babb192"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.0/clotr_0.83.0_darwin_arm64.tar.gz"
      sha256 "33a4907dabe8904e309e35c5983266411352925b95f253806c9770806920d473"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.0/clotr_0.83.0_darwin_amd64.tar.gz"
      sha256 "773bb799055641ae77c2970108e3cd94248d0dacfcc810ef8bfa5c35426c09b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.0/clotr_0.83.0_linux_arm64.tar.gz"
      sha256 "3dece62e4e167803bec5bae985a9098ea222869fc00e73a2ed00e6b2f2c7ca11"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.83.0/clotr_0.83.0_linux_amd64.tar.gz"
      sha256 "d47fce93815d4f5ce658ad0adfb8f5b6ab99addc47f3297a2582ab4bcb370550"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
