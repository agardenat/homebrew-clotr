class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.74.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8c74d23af748f97ff8a2e1907319d4d6a6d4ec556c229256967e053d5dcadf5d"
    sha256 cellar: :any_skip_relocation, ventura:       "413e8b6bc00a831e29cc1fc3df95d96196f571a7e1a949f3842cd527458ba19d"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "9f51bcb7b65a5ebe094112419f41a4cc744dfb653897dd9d345207e2330a3a00"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ef78ba0142815a64d9eb8ddb2949af51676b8021ccf256f417eff8bc3b565464"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.1/clotr_0.74.1_darwin_arm64.tar.gz"
      sha256 "e42558bd3c1096ed5dad72b709d5be66275120ca32b486ae19cad6824ecc125f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.1/clotr_0.74.1_darwin_amd64.tar.gz"
      sha256 "0e2802cf34111c7c682a8b12717ccdd0c7f286753cb3a6f7979536364e639f5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.1/clotr_0.74.1_linux_arm64.tar.gz"
      sha256 "55b1ccc617fce8eeaa8fc975c7e3ee4f24fab6ca8292839b4a0b1e97aa66f6b2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.1/clotr_0.74.1_linux_amd64.tar.gz"
      sha256 "87332fa3d85e977965804e1691f7de04d1714c3066586766f39347642c646466"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
