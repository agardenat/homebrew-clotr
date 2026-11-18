class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.79.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3f8564302789147684d607521d61736fe989b8d766d3930f587a65b8d5f31fdb"
    sha256 cellar: :any_skip_relocation, ventura:       "425f6c910e4021b051b5fbaaf36ac725851434f693539f1555201d4194e75b9b"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "2a8e258e7479429ac6ab993f837a6db6e90b4f2e1382b0e2d8f593c345e83fed"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ac15d6767409dc6927bf44478b705c5c4d40dc7f7e9d280896d990c5ad427c88"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.0/clotr_0.79.0_darwin_arm64.tar.gz"
      sha256 "fbec1a54501163f3190a2d6cedd23fe78ca338219b21e897e9063a832ad03436"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.0/clotr_0.79.0_darwin_amd64.tar.gz"
      sha256 "0ec4c2481779755ca658278316b374953537ca8ef981ad02d45bba7a07ca359f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.0/clotr_0.79.0_linux_arm64.tar.gz"
      sha256 "b137bc3aa855b47e585739227fc694f60cdd78ff79c5d28fe7970443b903f0af"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.0/clotr_0.79.0_linux_amd64.tar.gz"
      sha256 "36c3a382552dcf316c7ea9334518c7709d1da38ae3cd5d73e03872e5dcfe0156"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
