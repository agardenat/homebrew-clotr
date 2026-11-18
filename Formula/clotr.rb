class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.80.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "388c7c4bdf91870d46c1b15ea2e70d3f6feed5218adfa3b9990d3c677f06b331"
    sha256 cellar: :any_skip_relocation, ventura:       "6acd80310a46b1780cfcd443fd9c2f03262f23a64de55aeb334ca59997b8428d"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "7b2dcabdb6eb9adebf9bb68c8dd650244ff0fef654cdd2dd75f8d9e9dc58a0df"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8d7f4602353050ba5c70f3db15af182d99d043627631d38422ab899f09d56755"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.0/clotr_0.80.0_darwin_arm64.tar.gz"
      sha256 "54bd63cad00ba1f9c02dae79f83222fd16c29b499cc704ecd62cc652375f2a81"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.0/clotr_0.80.0_darwin_amd64.tar.gz"
      sha256 "7060a78821ca8f7948533de220a280014f3653cdf2df98780b9734887b5da45e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.0/clotr_0.80.0_linux_arm64.tar.gz"
      sha256 "e8a091e48ff6d6925bec900712b61d2c350d586a39161d1dbaf04a145c6b38ac"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.80.0/clotr_0.80.0_linux_amd64.tar.gz"
      sha256 "2cbab904c694b79988a649a81b511ce7dea8e3adbfe54a29c9c905baf001a44c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
