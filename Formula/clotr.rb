class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.78.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "00edd19926affb87c0159dfa24514dcc5d15d5d2677f71b692c4449770bf4a7a"
    sha256 cellar: :any_skip_relocation, ventura:       "e48b94f1f81e77b54e1233364b390e473aa48831cadcc35fdadc592b22592928"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "7bcfc3678b248eff33abe8763e98180d35ffcdf442f2e4b50dc9c48305477bc1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b1c9ac64abeb65620ebeee375613669198b4ab6b16b47fbeea266c4196958588"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.2/clotr_0.78.2_darwin_arm64.tar.gz"
      sha256 "1e58e9133820b92e2e962d01fe1d3127192e2fc298c9dbd63fc41554bac69a21"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.2/clotr_0.78.2_darwin_amd64.tar.gz"
      sha256 "810f0ce070d4826e4315371618c719f80f56e8290c178a49e580f4068aee480a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.2/clotr_0.78.2_linux_arm64.tar.gz"
      sha256 "857753697abb961b0ef890119f82fa0ebfdd6f9543112d7d9eb7b8a5baa1f5ff"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.2/clotr_0.78.2_linux_amd64.tar.gz"
      sha256 "dc28f9c73340e6b8ace40cb55e4399c959288490c35ba85b9d6d42e99467ece7"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
