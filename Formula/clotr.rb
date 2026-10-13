class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.14.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "adfef82b4b62eb55f2093889065b79c3e3d9e7d505cbc62840bdc681d8a1d9aa"
    sha256 cellar: :any_skip_relocation, ventura:       "0980b069da297d649992f1f9b899edcb201df86d44a05e0309f55a9e4a7302f5"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "7ab744a588c143e4ea68bbea3f5dedd1b1b250b2987fc12f3e9a2a5f55c86677"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f3b6eb3a10f2c070dbf930d0be26ff3db41cb44e84501e40c0e961835810f3f8"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.14.0/clotr_0.14.0_darwin_arm64.tar.gz"
      sha256 "49e0b905ba60122022a0a9d5f71f33066d9d5fb92e218ec6c216d8ae6df0d8a2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.14.0/clotr_0.14.0_darwin_amd64.tar.gz"
      sha256 "811dc82bb143b7f4e8f10ff8f7289e713b8c3aa5d03b8d151f6400655ae74377"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.14.0/clotr_0.14.0_linux_arm64.tar.gz"
      sha256 "3eff96c2cc251f3d5484efe1eeb7680f30236060d8a7140bcae163f2febaf202"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.14.0/clotr_0.14.0_linux_amd64.tar.gz"
      sha256 "4d02ed8c9b838e77236d036ad584e8717ea1f321f7f292d85845429379a21e10"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
