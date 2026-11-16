class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.73.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "9749f9740760bc62e2189f6dd04c2b449010487c3c0fde4b36e43943d24d484d"
    sha256 cellar: :any_skip_relocation, ventura:       "20306928dbf91e55949c63c62c7ab5450e213935112f5c07333cea583fbc3f34"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "f21876c53a9640e9113c86b14d61372e03816748095219dd3d07491ef8b0e52b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "995daf6b2707e0a28fdae29b6a6c00d5ca5284dfebe0870f09faafcdd8c705e1"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.0/clotr_0.73.0_darwin_arm64.tar.gz"
      sha256 "c2d4d2ecb82b3cb363de671188a17b963d5f72c5a20261a9af885d308cfebaa8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.0/clotr_0.73.0_darwin_amd64.tar.gz"
      sha256 "2355225b188d943316ff0e567c96830a18edffc4f35c8cc2b232fd66f84ec619"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.0/clotr_0.73.0_linux_arm64.tar.gz"
      sha256 "92bb02d0dd0ed0bcb72bfb10f1b2bdaca9c02bee8a7f9f1c7d9b3610081f422b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.0/clotr_0.73.0_linux_amd64.tar.gz"
      sha256 "4a9e4b2ac8550480e3721c97924bf371e8d205aca42f8dca3e9dee880d8af410"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
