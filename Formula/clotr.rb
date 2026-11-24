class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.86.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7dd3731858e50cdfa74dd2ff740acfb36efac02677c9a6f65e0174e6e009f889"
    sha256 cellar: :any_skip_relocation, ventura:       "3b25dc81ab1b1668f176a7a8b713e5e4099f57550241e055055cd815d873a003"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "b3514260c1c82cada0aee393cf29daf4c234f84d6de6d6a42462f7bc118ff640"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "93ad5c7acdae854ed79801a81224170478b07a0663b6a6d6655ea1f211d32893"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.86.0/clotr_0.86.0_darwin_arm64.tar.gz"
      sha256 "da20344a8f4ee789c846f09fbd3d276dce80b9173d3f6be8aa565a452d9045f5"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.86.0/clotr_0.86.0_darwin_amd64.tar.gz"
      sha256 "75c4bec92b176dde84a26e299866646c7d8e78b3823fd4d618852a78303c5e23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.86.0/clotr_0.86.0_linux_arm64.tar.gz"
      sha256 "0709d1c434f09bbc16f5fc24f9d504f2a02678d0d631edd66f81e84b96a52655"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.86.0/clotr_0.86.0_linux_amd64.tar.gz"
      sha256 "f3c38cc0b8ced1a92af61a7e0aff98a9371b94276c0319768c5715f465e8f31a"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
