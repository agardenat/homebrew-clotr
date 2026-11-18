class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.79.4"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "705103733036a25f8c416071f578158b8d67635301671b1ef3ddfd210d9ad2d1"
    sha256 cellar: :any_skip_relocation, ventura:       "680ca4f1182b43cfbd85a8baa250d3442d7be31a76506f564d0568620bf057a0"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "8cf04a226786dd1ce8dcb323946edb80d0cf07df5ce810588802aa4bbd2eb7a2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "97f26630d6822bdac3ecaee71a221d3fb8836c167ec504353fb7581e6321e53a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.4/clotr_0.79.4_darwin_arm64.tar.gz"
      sha256 "70e13c56162376ab2e42f7c32e940b0b6a52bec590b3de8bd6086d4168cffec8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.4/clotr_0.79.4_darwin_amd64.tar.gz"
      sha256 "f905939757a902cb2f6ef3c98cfba8cadf85b00d0f2a19e2d34783b75502ed17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.4/clotr_0.79.4_linux_arm64.tar.gz"
      sha256 "89b4ff30ebbb0e92e4cd1f2b9fad8e39b60d429686b3853e05f73ed9b0edd61e"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.4/clotr_0.79.4_linux_amd64.tar.gz"
      sha256 "94c93c1baddb60c22e6736a63e6bd4b9a3c2505b8e18d46ce91cd13fb8a6fa4c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
