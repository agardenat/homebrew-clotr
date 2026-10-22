class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.30.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b636a3e8bff8e12072fd38e89a1cb5298b18bbdebba357e68880398588224505"
    sha256 cellar: :any_skip_relocation, ventura:       "c30a19ed0846133d485b8b3f78e69cb379d134d8e30734ec1a398a29128ed97f"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "3641cd683b6b678cbbf69a995fef838fd65f3cc66ceac79e9eae7fa06542a683"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "75a3bc81b1a0665cc851723efb778075f6a247b22f4c9dcb08795b24d2c417ed"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.30.0/clotr_0.30.0_darwin_arm64.tar.gz"
      sha256 "cc240fd4fedafd1e30b71e3a6d0c73d782b3f0ba5964e6e628982ea116b4c84e"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.30.0/clotr_0.30.0_darwin_amd64.tar.gz"
      sha256 "394c37ed110ac2a7a13580d7acbf89e5f7792e2057a70b57ffd9c51a7891e094"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.30.0/clotr_0.30.0_linux_arm64.tar.gz"
      sha256 "70c71a0c09df0dd469550956ea7f56585a61a7a73d964942eb7e3a58211d7fc2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.30.0/clotr_0.30.0_linux_amd64.tar.gz"
      sha256 "98d2134ee45400c41ac151592fc0322339fdad827aeac777136fce7c28163d08"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
