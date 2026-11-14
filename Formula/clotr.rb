class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.70.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "62781ed8c5c7d5e2441ea354703b8505e1220fca683622f47429db441440e5e6"
    sha256 cellar: :any_skip_relocation, ventura:       "5a02759769433f4dc69f0948f43d002b0751e1d9a5ef8a7871a829f5a99bce6d"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "548fbb802fc5d15d509e3fa5a9906dd4cef3b7c48dc75536051c5f32a83b1722"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9abd76d6e2bff5ae6b22b6943b1cff9173c89f85d06625cba26b54302d269bd1"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.0/clotr_0.70.0_darwin_arm64.tar.gz"
      sha256 "782c2c53164f79bc2f16fa4f5eaf42b304bcb91e61564d0e84736fa2a67502e5"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.0/clotr_0.70.0_darwin_amd64.tar.gz"
      sha256 "1c1cd1acbf2d7ba54fb070ec14f27b433543cf45bb7ed921f1723bdd7a4227dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.0/clotr_0.70.0_linux_arm64.tar.gz"
      sha256 "941a07a6d56a82c4146d2c7a85c12d20da1ba4d3395d46159919d9eced8a52f8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.0/clotr_0.70.0_linux_amd64.tar.gz"
      sha256 "3a9048c3668e3fa212909aca72fd42e9b5bd3ced8f0fdf4e12dd252a8a524bf3"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
