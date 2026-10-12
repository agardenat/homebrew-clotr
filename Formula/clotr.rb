class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.10.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8f068a9f827d114cccccee1c8a6490867f71c980cec2d33f8ff8cb87d1760a37"
    sha256 cellar: :any_skip_relocation, ventura:       "85bef8311f0a5dbba082f75fa9c544df2ce8166a23b2f25ac33a352f901893c7"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "acf5feab1283eadca5fddbd7cb70e3d61f2723f0ae0e4a55ff28028e9b63f891"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "91fb44eb44093d7d65481ad29df243b825cb26729fee377f332716bfcde920aa"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.10.0/clotr_0.10.0_darwin_arm64.tar.gz"
      sha256 "71e2b7749efa94192712e5ee5ce47d782144bbd1504a6c7fd4eb8a85e8c46522"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.10.0/clotr_0.10.0_darwin_amd64.tar.gz"
      sha256 "6ed3dd02e076b5f2020e3d76d7f9a92279735b4055d27f6c851c05b2bceb783b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.10.0/clotr_0.10.0_linux_arm64.tar.gz"
      sha256 "1a7891e44753324704dccfeae963ca7eb7a4469ea4973103121578c558ee205f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.10.0/clotr_0.10.0_linux_amd64.tar.gz"
      sha256 "3ec2ee39475f333b0ec86ad9d5d6c7cd070ff25379e75456f77171acf88076fa"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
