class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.79.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8aaef2ef165b00f21c2af0d6ca40e1293e002b43a9078726e73cef3a6a52fb5a"
    sha256 cellar: :any_skip_relocation, ventura:       "32c1f17f51cfb3724fd56b6b29b0b7195860d2975854a01a29afe7062e85e4f4"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "180590b6f816461209a0e0e2f437f08372ef76e58a757e74f48a1058d3102dcf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "33fd2e21c5f858d50b0c9ea43cc96ac758d76c089003716b921e2dd120930f45"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.2/clotr_0.79.2_darwin_arm64.tar.gz"
      sha256 "2e1b18f4ec0707c5c2960f3b3de34cfe92c66aac95e67c062fdf7e10711b3617"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.2/clotr_0.79.2_darwin_amd64.tar.gz"
      sha256 "0d80ef36a7ec68e943bce5798ff24bafb19baa6004903f86501df3466ffd1142"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.2/clotr_0.79.2_linux_arm64.tar.gz"
      sha256 "75ae11e075aec5633075f30ec3bad94ad2236bd91aeabdbf9b7a09a1e9b53616"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.2/clotr_0.79.2_linux_amd64.tar.gz"
      sha256 "dfa96f9a9517b26788e1934222a0f111223ed9002af8a3368db0f415e9e9d03c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
