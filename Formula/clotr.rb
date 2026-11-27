class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.90.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8a23645d161d4884412422d8ddf3bd721e579a2a02cc7a6175f4aaa81dcb71d7"
    sha256 cellar: :any_skip_relocation, ventura:       "33faecc3c97e0b40150f5d2523a01533d3e299f7f04249ead6f302475cd14a42"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "654d0cc782be015990b312d743bae61ddd96a2a6cdc3c0ad842b0aa51d920b4e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "822e0c6a5238d885deb22690262d63e4e1b0776a85bdee5b4666459f355e6bd7"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.2/clotr_0.90.2_darwin_arm64.tar.gz"
      sha256 "f0b5d07e328ac6c7184c7ffabd4159efc938c9fcd090de9f3c08929e6498c6bf"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.2/clotr_0.90.2_darwin_amd64.tar.gz"
      sha256 "e86d51116e1a9b9c2065a466be8930ffb1340624d8da80d4ed05245cdb79beb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.2/clotr_0.90.2_linux_arm64.tar.gz"
      sha256 "3bee5ad19928f26ddba9b9dac76558a8726af2a99bea7f19dda96424848f25fe"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.90.2/clotr_0.90.2_linux_amd64.tar.gz"
      sha256 "d545c0bc40b51339a5d03308a324b15e7cf936b04ec6442068535dbfb9b3fbea"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
