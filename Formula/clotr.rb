class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.78.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "138bc3dc6b6dbc49df6e4bc71aff85f4d77e82cbedd0a6313c88bacf9aefbd7f"
    sha256 cellar: :any_skip_relocation, ventura:       "a0ba5668c759d73d67cea263c2099e448d3f812b57f1b3e04c21f575d996b2d1"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "4c15785c15860744a28d8a417f78ae1d83f99c27e6c4f39aedfd9b946a118772"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "51112dee4b8d5719e54ef46d3bca3a4f552f11982446c52014d7a17a7646a240"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.1/clotr_0.78.1_darwin_arm64.tar.gz"
      sha256 "b549109cc7f6794874200d4a0a55c3cd739bcc052eedeb9bbbe44f0a8afa0e44"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.1/clotr_0.78.1_darwin_amd64.tar.gz"
      sha256 "23bb71779c5dba2aa574dc22b3339fef9cf69ed5bd73c56b5ad10d7fef5ce9e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.1/clotr_0.78.1_linux_arm64.tar.gz"
      sha256 "68dd3f2946ed7a637a1ac59817df1032caeda11b6b078760228800e5a42772a5"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.1/clotr_0.78.1_linux_amd64.tar.gz"
      sha256 "608bc74a411014906ad23433dd91722c72a6832e87a88eb3237e8151167daa82"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
