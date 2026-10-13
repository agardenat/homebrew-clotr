class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.11.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "18ac6601128d9a24160f7fbd0391ab45227bc13acf7d1893d5bff69d06c06c45"
    sha256 cellar: :any_skip_relocation, ventura:       "c0ba5416d502cff32e4820b56077721d03562b018b07488a4af3088463c154a1"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "98b5df9d662548e133c043b9996656898bfde9329708c12094d73a95cbb39e59"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5687c5013b11883751dc87af2a70499ec35cd4d5e15f72c7860d5eb4b4320f9b"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.11.0/clotr_0.11.0_darwin_arm64.tar.gz"
      sha256 "d34ab0bb34091a46be486ef9326a4812e128a7008bac99a0a050a3a0d92799f3"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.11.0/clotr_0.11.0_darwin_amd64.tar.gz"
      sha256 "5588abdfbaaebfa6278cf787eb762ecb90a93bcc5472032dba970e7885de5110"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.11.0/clotr_0.11.0_linux_arm64.tar.gz"
      sha256 "71c71f1069676a2b972fd4bfd91dd6304bf2adf4590e37261f73eb06729ec5fd"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.11.0/clotr_0.11.0_linux_amd64.tar.gz"
      sha256 "e7e47f1c4a2fafa6e83a8073e1b543f4067c912afcae9f65e70fb5850cc090d3"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
