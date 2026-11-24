class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.87.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "37c6072642072e2f1d34287b4878383c0ae661750a2f0bcb47e019fc74330d9f"
    sha256 cellar: :any_skip_relocation, ventura:       "32fede6ec8c74a119edcf630a61af57c8abef30babdee3ff9db05fe7774f5199"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a11ae161ac9d7e92fab0b08ee6edfeb55d0ee432e4f044e965ed6886e9fb95a6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1423562db3e14cb6a8d11beafb6c0e853222dd1ec0cd7030cf6e96954bc6052a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.87.0/clotr_0.87.0_darwin_arm64.tar.gz"
      sha256 "6ac229845297460831c3c2ae1b88459ef1d81a73950e4ab99ebb20f990a07092"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.87.0/clotr_0.87.0_darwin_amd64.tar.gz"
      sha256 "294f601a14c92f5f5d5e1995236986282dc50ab4710f753b58075611a8c755d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.87.0/clotr_0.87.0_linux_arm64.tar.gz"
      sha256 "38b82996fa043a558bffab252849c6bdda6483232cc3d79cc1a126019cca820b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.87.0/clotr_0.87.0_linux_amd64.tar.gz"
      sha256 "e8a27b71073d84bdcea107b814fb775b1c5d5e6b364dc59ee3fe5b48fa186a5d"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
