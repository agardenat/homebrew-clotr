class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.21.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "47fe4883cecd6b1ea34e5bf451168aaa8db3cb4b8c1346b4dc43718d9372732b"
    sha256 cellar: :any_skip_relocation, ventura:       "0caae374e5faf039b1fb675847273b4a9af8c414a2ea2e35af46ac5d7f1de204"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "121a52958238fc6e0d7de10c128ab292014c4a492a339b91fbe9dcd10ab26b0c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aed35409f6afef9affdfeaae48559613d9e96b5c22cf19934183095efc21e02e"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.1/clotr_0.21.1_darwin_arm64.tar.gz"
      sha256 "dff086f1f859cd3c098b75489e97a68b241a24663bdaa0009dddfb7df20b4356"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.1/clotr_0.21.1_darwin_amd64.tar.gz"
      sha256 "1fa2ce1569f6cabeb87419f867752c3d1002a086966e4e5ebd74de5ceae13b79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.1/clotr_0.21.1_linux_arm64.tar.gz"
      sha256 "8680f36625fd4f82053035c14c0b1f6bba09bffcd9b2b8d7f0d1f5d3b9d51e81"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.1/clotr_0.21.1_linux_amd64.tar.gz"
      sha256 "02aae438139e0c0b1cd4f6ce75b5add8b0cd5879d7ba50d533fe45114bf8af89"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
