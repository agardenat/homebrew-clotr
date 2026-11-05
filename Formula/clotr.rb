class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.57.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "4a50875f530682220b665f64a653c487e0ba9c90429caba73387d7243dfc02f1"
    sha256 cellar: :any_skip_relocation, ventura:       "ca1860d09d8fcdd71cc7b256690e68240107721c4c22ce9936999c22c10fbf70"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "7f6a23e8db957e9bd64bb2faaa087b0293ab041f55fd942030a57f304a261a74"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b3e59ba70637ebd25cb4a6d8d0921d2e091691c3666b1145508163b981537bd0"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.57.0/clotr_0.57.0_darwin_arm64.tar.gz"
      sha256 "6c719f9fca87525a7c6d001acae63e76ea6373f397f53b5c8ddb1bcd457c7622"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.57.0/clotr_0.57.0_darwin_amd64.tar.gz"
      sha256 "4d6398d9759e7f68df81eb166c709bde90bc13b1187e41a645821d664679ef6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.57.0/clotr_0.57.0_linux_arm64.tar.gz"
      sha256 "cd1e8eef13c840c665dae334809036c829fb0ac3b05925c051b06768818008c2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.57.0/clotr_0.57.0_linux_amd64.tar.gz"
      sha256 "21846ccda62d255edf4d06130d12ad02ed0c492f45c1650e89a92454b1eb6cf2"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
