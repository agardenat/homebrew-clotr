class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.34.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b726c4939fc2b975d4f0b028140bee04e9d5cb5954aaf94022cace9d188db84a"
    sha256 cellar: :any_skip_relocation, ventura:       "8e270495af9e67badb4410b42b243144c46bbff23d86f160b56d27f865e5e97d"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "e9f57529367b001bd3ea8b3f8dfcf33734d74e02f6817c7d848d68a8529f8628"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "492aeae63b90fcdfde58da403afee7c4ab2f98edcd3f3916ccde04262b563dd4"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.34.0/clotr_0.34.0_darwin_arm64.tar.gz"
      sha256 "67698ba3f924da70c52f48d6db800a1f5571d02c8b09dfa4651a7ad325cad5bd"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.34.0/clotr_0.34.0_darwin_amd64.tar.gz"
      sha256 "c8e579e5bd6fc2a787f48a25e40b001092f49489495da7171d4c0f0539b30b2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.34.0/clotr_0.34.0_linux_arm64.tar.gz"
      sha256 "fbe55a867f9b24e83d60708dbef71bcd5071393bbad921cf8a5c4e809fc4f16a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.34.0/clotr_0.34.0_linux_amd64.tar.gz"
      sha256 "a559f5e37d1853c7807859dbd04e9c910e6ee432f8f875160936aecbae92526f"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
