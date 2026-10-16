class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.23.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "a1a9f64aff36f7c97dbe22959117f15e7fd7446a627130789d228a822c7389ef"
    sha256 cellar: :any_skip_relocation, ventura:       "14558417e83bcdf345ac5b4f1256d22f1668f517ee255f75685320642caeb06b"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "d028e9a7f0121f05ea65036ad3032f8037e14971a8d441a36c424a10c1e38b23"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5c80e8f4115efb944bb8fc8d509867029617208c4435c32f0df4daf96dfc5f32"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.23.0/clotr_0.23.0_darwin_arm64.tar.gz"
      sha256 "90db922c6571db8981c444c62a79acca92fd542b0c715040c30a15ced3bfe7f3"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.23.0/clotr_0.23.0_darwin_amd64.tar.gz"
      sha256 "4b2c9235656478c0cbfe09e7dc46ced1f268d09dae9ef4439dd3ceb32db29701"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.23.0/clotr_0.23.0_linux_arm64.tar.gz"
      sha256 "a8c642941003a7de0b274a1f57524f4f7e69079ced69e9bc3a6f98a8eaac442d"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.23.0/clotr_0.23.0_linux_amd64.tar.gz"
      sha256 "ea7794cbae71df560d5a51eb061cf93e743e8ec772a1158aec184c5489ae92d5"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
