class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.80.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "bd9e6b9a0e60369e81d8db7a8edae265c7c2f30b59fe4f7fbda998efaebf1210"
    sha256 cellar: :any_skip_relocation, ventura:       "33fed255a23d2e8c1390e81e53a99cb807cefe68933244e3c709a301201fdc6e"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "0c3890499ebf2aa6249fe777d7d712051ce38e860564abc9a1931f07bf9270ba"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c895ae250cd4274cca01f55ed5ea293319bb30d4bf7a81b938c4ceea355004ab"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.1/clotr_0.80.1_darwin_arm64.tar.gz"
      sha256 "52ef4f22d7e22200ee27f05c382a04ae17abd13ce296663c6a09b037ffb2767a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.1/clotr_0.80.1_darwin_amd64.tar.gz"
      sha256 "4d848de9d7fe5f0a57c5197f170d9facc14ba9feaa308ac2cc12375192b43086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.1/clotr_0.80.1_linux_arm64.tar.gz"
      sha256 "05b1bf6c4a4620d78c5277e22e13e115474142e3ce24709e109b72cffa2d79ef"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.1/clotr_0.80.1_linux_amd64.tar.gz"
      sha256 "6dcf5f60ecd99a5aa6ed96bd4d95c29b51303f803dac637777882a542893251c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
