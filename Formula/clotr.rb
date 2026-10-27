class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.42.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "dc08e0b80bdc5d1b8ba3641673491f44516cac197321673bed9745b82428b25f"
    sha256 cellar: :any_skip_relocation, ventura:       "1387cff185093a75a337e12f5070485543d2ad65b8646e455f7bd451c29b4f23"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "251118c8d6ec2055f393ba3a208d8b87bfa6909d64c9839dae455a7bb663e71a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e77728506130f010106e6864261a33bd07669d325c90edfef9773663ff011485"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.42.0/clotr_0.42.0_darwin_arm64.tar.gz"
      sha256 "c5dfd51b64e04c868d11d85eb864e9317040d0bb73eaf42f57ddcb0409313582"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.42.0/clotr_0.42.0_darwin_amd64.tar.gz"
      sha256 "d91258e57b5dd9be6550b5edc286edf4eb0eb7b4c327a42eeb74bf2e373718be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.42.0/clotr_0.42.0_linux_arm64.tar.gz"
      sha256 "88f1dd0245bdfde015aece81e22c789e0ed6d6ad7e58f19878bdcafe4bc3f405"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.42.0/clotr_0.42.0_linux_amd64.tar.gz"
      sha256 "1392d4246020ded4fa61ab5fd2d48415026b063be200e14f88d30e84b537dd8b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
