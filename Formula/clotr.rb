class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.94.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "24c5dac91abfc840c691c308436b4b1df3b367865f9286d346c3e50b2d4454d9"
    sha256 cellar: :any_skip_relocation, ventura:       "490d29c36907c5bc918fe2777a6dfc021d4c5067af169afd6b069e64ad079eb9"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "65eccd5546867f9ca7e14a2b7c141ece786a7b6cb94c5aa0459063afa6dadb6b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "81f91a5826d08cfa34751fb5033a34b20eb17dd9bf8d011807a74d74f5bd51b2"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.94.0/clotr_0.94.0_darwin_arm64.tar.gz"
      sha256 "f3726c3a97f88d4aa9de92d66c3ad30d9e113ee6c5d7c0bade124cec2e017ebd"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.94.0/clotr_0.94.0_darwin_amd64.tar.gz"
      sha256 "415a8544f09aca9469eee973fdf32774b724258fa18b644417a1c56ee718cdb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.94.0/clotr_0.94.0_linux_arm64.tar.gz"
      sha256 "ca639e0bd9f9a977dadf9af048ecaafded24e461ceed18a74527984e2e34971c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.94.0/clotr_0.94.0_linux_amd64.tar.gz"
      sha256 "bf0cb90a7a726b59a18f495a929a44554c4df605281b39f4b9122f9173b0e3a7"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
