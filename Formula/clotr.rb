class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.75.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e1f04c36ba3b9961f731e75852cce789b7dd640eb97552a2172a47c27cdf0f3b"
    sha256 cellar: :any_skip_relocation, ventura:       "8058d4e61957989e18b30a3c7203cafdf94553d567cbdc3bec64c5e3a2164a61"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "1033eae0e20560ad6d3da1389f4fd23342207509d22c04013154eb5f1823b7c0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b3c3acdaa6e87c3e121bf7f1de88fded7ab4630e9a86cf4f43b1daad89cf427c"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.75.0/clotr_0.75.0_darwin_arm64.tar.gz"
      sha256 "3dac2817a6ce208cc649e0ec41abc498dfc233237f5d343faeb268c9b4bb68f1"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.75.0/clotr_0.75.0_darwin_amd64.tar.gz"
      sha256 "8fc910a0d3dadc2f2b0284334066f3d83d873f24df34c678af178ef48ddc335e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.75.0/clotr_0.75.0_linux_arm64.tar.gz"
      sha256 "98a01c436fc9ac85c904e37b7f5963d3bb1684f2c47076a1835df56986dac9f7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.75.0/clotr_0.75.0_linux_amd64.tar.gz"
      sha256 "e6d74ff5093edbfd5b3b4de93908fd5b6bd999d91583b8267369d6a1ec146ce1"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
