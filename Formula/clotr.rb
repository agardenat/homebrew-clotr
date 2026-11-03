class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.50.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "656afa3079cfaa4ee35046cfad1fa0f4a1f323f027d3283d8ab593258e827638"
    sha256 cellar: :any_skip_relocation, ventura:       "b47af5236d3635572fd94db0983b37aed117ac57166ad21264057d74d1cea91c"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "ade10f9a86a03b0d2535832f6c131c727570bbf14697b49b8fc94e3eaac3731b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c99a996734f868c5b392db37996212b1245695c2fd92813b09bb64020d1d851a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.50.0/clotr_0.50.0_darwin_arm64.tar.gz"
      sha256 "f2639c2e51c65e901d31f974841d6183074369502d514024f198817ac6678659"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.50.0/clotr_0.50.0_darwin_amd64.tar.gz"
      sha256 "ea53a884ac149491964d4e1d857c274a7c0e9bd1a618b624fe1f41c7926e17c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.50.0/clotr_0.50.0_linux_arm64.tar.gz"
      sha256 "67446af0534295aa908e45913a2c9fe48eeb7ed79d2ae8e9bea377d2bc44c4a7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.50.0/clotr_0.50.0_linux_amd64.tar.gz"
      sha256 "5eab13b14ab47d1a4d8336651cf3cb4c899ca8e0f6a73700287d5ae6e1998f36"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
