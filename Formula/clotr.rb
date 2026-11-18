class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.81.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7179e1cf2348dc615e7c6afd96aca536170300861337f74f52d4d4f6f455d7e7"
    sha256 cellar: :any_skip_relocation, ventura:       "29226ab0530e6f146cc919993f9b80996edefe91620d8d58083766bf7d8229ec"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "0b4821e4767687f233f71aa47dfe05f8059e6878b215c95a519d5f6c7448cb57"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "61568e2103e8881499270159ce187d8de3b0ebf8f248e387d08bb85e8a9e8056"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.0/clotr_0.81.0_darwin_arm64.tar.gz"
      sha256 "e01a91a3868271797c81e3eb509e34d4e6fea387f88e986e7559943b799e6931"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.0/clotr_0.81.0_darwin_amd64.tar.gz"
      sha256 "9e4e31f34a945be34402cc5ed9eb320fea7657082c76c42e855a8a36823718ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.0/clotr_0.81.0_linux_arm64.tar.gz"
      sha256 "96d3d9238b6901a8d9d9f47874db9891209ee9ecba76cded0045be7d8eab4a89"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.0/clotr_0.81.0_linux_amd64.tar.gz"
      sha256 "a82039651fc8637ce294b8f8e9b11cf9a8697001371666de2c6d5a491e2a9d72"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
