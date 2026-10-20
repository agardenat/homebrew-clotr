class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.28.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2c7e3d2ad2cd754a3f6530877c110a636d174631a534922a73456fc4b24f0e99"
    sha256 cellar: :any_skip_relocation, ventura:       "b0f38e1b14bd562d86a6ee49707635b63040ce946d6f0a81ec3e199ae03829f7"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "595616e91ecc364076ba8557c85280dca30631b3e0caf6ceae0e996a5da921ca"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3a9035acb2dcdd012de5701edf779c775c857f5daffe67c45b4e64c767f89435"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.28.0/clotr_0.28.0_darwin_arm64.tar.gz"
      sha256 "39c7043ea8ffd1a8d6ae47051304e2d31e4dec8f1f92a8bfad5aadf86c8bd1ad"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.28.0/clotr_0.28.0_darwin_amd64.tar.gz"
      sha256 "a08a42f7a9e61b62b51c9a4eecde38358ee855bfc326379981ed218d2436eb55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.28.0/clotr_0.28.0_linux_arm64.tar.gz"
      sha256 "bfee38671957c0259639c889e520a83e9fc061b977b2cbb4fcead7b931a55d2a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.28.0/clotr_0.28.0_linux_amd64.tar.gz"
      sha256 "5819f3990decadb437dcc1461734783a18e668fa7f053638f0a1ccf9c3f89d6f"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
