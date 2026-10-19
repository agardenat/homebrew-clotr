class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.27.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "fb2e3512bbd1d028fbe34c22239d5e9dd7b35eb024340df8df8bc0791064e06b"
    sha256 cellar: :any_skip_relocation, ventura:       "5484a10014620fb3028094472bca712da4850b439c61a11c1f62f034fc392b20"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "5efaeba22784fb979316521577ea31c4ceb4302f3d18f99f859a095e386b899d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5310f4e6b8335ce4f20a57d5f066e0bb52863e2fe1149e5df086e514ffd95d27"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.27.0/clotr_0.27.0_darwin_arm64.tar.gz"
      sha256 "93df69ab1939f1d1df4d3fe537ce2c61b318d502f0ded30ef312c389fbd456d4"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.27.0/clotr_0.27.0_darwin_amd64.tar.gz"
      sha256 "38088d396d2d813495076240d95024a88418d3113a505d32bfe4327a6a3a2c55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.27.0/clotr_0.27.0_linux_arm64.tar.gz"
      sha256 "54932ff7d47128a2622513bbdaa1e0ec27f39cdd2d52b9c1ab3c03b3a5b65c50"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.27.0/clotr_0.27.0_linux_amd64.tar.gz"
      sha256 "2e0a716a53dffe642a5293b77a50b38fc15b8c855aaf21c3d6258afc6bdd6d47"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
