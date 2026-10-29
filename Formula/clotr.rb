class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.47.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f7ed0e188bc0b8bdfd2acf23a1c68e427e6f4a11056e87701a8e76cd74817dee"
    sha256 cellar: :any_skip_relocation, ventura:       "0ff16e09cca0f353e771670fda0c13023140a9d58b8a343c0c110da66cc6f7ed"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "e60ca22eda847d926cafdf5c4c1124f3cb740ac228acb857ef0f21cc0f6f54c9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b07f362db7fb3e94003e0f530a9961280499ea8660adf96f5dd28cda79f117b7"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.0/clotr_0.47.0_darwin_arm64.tar.gz"
      sha256 "c5cf0b7ed196024759c4fcbc440339b49a0a1e3587e65c1bd418b9031be7b224"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.0/clotr_0.47.0_darwin_amd64.tar.gz"
      sha256 "7c603d5ca70e36b740b265eb4e429b5cdaed99f684deb050fbf14d708386680e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.0/clotr_0.47.0_linux_arm64.tar.gz"
      sha256 "424caf3d9184c5054d2ff2de95ceba8b8ad5f93d79b1ccdbb85815eb5dd976f8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.0/clotr_0.47.0_linux_amd64.tar.gz"
      sha256 "720d480c7a538b8f9a9d05dd9f4fc755f1fba1db1791a5d3280abffbb625dda2"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
