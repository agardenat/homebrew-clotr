class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.89.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "4192b4dc06c0cd24e47b7451126f61fe97e47c8bbb772447263fe4afd7fe3dbe"
    sha256 cellar: :any_skip_relocation, ventura:       "360fedf726ce7873454448c1a1a4b5af9a2012650bfe87617117eac622bba200"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "8a4d4d2afff441f1dfe958ab8c24322d304282205dfe1f7c1b73a56e9251e89a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d8fc745a8c2e58fdbad1c8bcbfc4221d30558862ef78cf26f698fdf60198756a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.0/clotr_0.89.0_darwin_arm64.tar.gz"
      sha256 "0c7657b3a28aad537468fea80a024c51736814f2aca830b6cd177c9acec08037"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.0/clotr_0.89.0_darwin_amd64.tar.gz"
      sha256 "2d081c5199c48fab15d25ffe22cc23db03368db61e8109dfc3a88f3418708009"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.0/clotr_0.89.0_linux_arm64.tar.gz"
      sha256 "69cb1054ff15b9a25604887a0f2fd9650adc14e3973d4fb8d7c791a3a0b9b657"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.0/clotr_0.89.0_linux_amd64.tar.gz"
      sha256 "71829bd095e8a638a3ab5c4bcbc6df1ea47a01d47699211f3a3842953c153194"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
