class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.45.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "1df9638d84e3486bc33cd54ddda56e647d1e82bc8daedc337ec873f6f8b53847"
    sha256 cellar: :any_skip_relocation, ventura:       "d4b2664c30444f76db94a1434a5a5ee904a3f77ec5c3b7b7a5a35a311386dc33"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a2e127f76cbff20a434942f60b41e5317698ceeb1e2dfae69db8fc4080d94c52"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "38bd3ddf28d33a3c7c9d6cab527539ea1ac9ae8fff1d6a5ef151a333403d02b7"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.45.0/clotr_0.45.0_darwin_arm64.tar.gz"
      sha256 "b0b6cbcbe55f3f91642f9472d22c50e79e7dc64cab63540ce170f5a8c6cc9a6f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.45.0/clotr_0.45.0_darwin_amd64.tar.gz"
      sha256 "2c27d7fced3ae2a1243280b4a03b7e9285f0d4618219d75b75c2f88bd154a7c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.45.0/clotr_0.45.0_linux_arm64.tar.gz"
      sha256 "24668365f8ca64f4afee8e32d5dfc7b929d160f2c297d28658fbdc01cac2496a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.45.0/clotr_0.45.0_linux_amd64.tar.gz"
      sha256 "85a5e3f16886f2ec08ad6d6719abf5f01c63c1da6299e021cf96036171682d5a"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
