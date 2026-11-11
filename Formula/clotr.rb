class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.63.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d2451d345cf5a6f4eb387c6c2d0f902c36134fecfab67b123261ab5490696819"
    sha256 cellar: :any_skip_relocation, ventura:       "27d6832ba847a7aa6c9fc9bf58c13d4d8f20f1bca9c47c2daf19653162bdf911"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "321623cff0c2d6f207f2959b0f9b22fb11a4407da482fe8ebc96ea85c44db29a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7e24209e75940ab87853f0ff29b96ba3c5d76dabe545aa60d5f772c2f3d06066"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.63.0/clotr_0.63.0_darwin_arm64.tar.gz"
      sha256 "e2b60de239dd7263b80d173a9a2129632d947306c9908d2803c9101938421eea"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.63.0/clotr_0.63.0_darwin_amd64.tar.gz"
      sha256 "163a720479308dd61d02521f8dad2127d9909f30c00a1f1018f31cf947fef465"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.63.0/clotr_0.63.0_linux_arm64.tar.gz"
      sha256 "18785a2aa032c95c3fbf532682554de779be471441d1991390f5e5a39c772384"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.63.0/clotr_0.63.0_linux_amd64.tar.gz"
      sha256 "642772b2d6ce1b7f53c77f4ebfc05eb9f22fe1cc61a5357939fea933e20d463e"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
