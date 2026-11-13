class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.65.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f361f28d58521d76cb24226e707465c5cfd1ff3b16cf542e459560020da31a5c"
    sha256 cellar: :any_skip_relocation, ventura:       "c24ff3afc912842cde6bed5343bb3ad21b3a0b48f98da00d8e60c62b967722dc"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "7cd09bcdcddc4a593f3ecc50783359351108141c43bee77b5d3d3220db819be1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c3e85a5bf0145aae929cf857ac49cd79e11c1ec7976487a70eef7237e8e9767c"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.65.0/clotr_0.65.0_darwin_arm64.tar.gz"
      sha256 "b9bdc0ca250ea650c0b71be9a4cd00681f60cfb33d91b1958e80edee6b409263"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.65.0/clotr_0.65.0_darwin_amd64.tar.gz"
      sha256 "05649ea4a46de5b88a4e3ae3dbdef01e93f2f5cd843372dddb1fb321ad53afee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.65.0/clotr_0.65.0_linux_arm64.tar.gz"
      sha256 "35ed477fe1ed1deb68325d3d8dcd1d749cedba91a883abe9dd941eab2664af81"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.65.0/clotr_0.65.0_linux_amd64.tar.gz"
      sha256 "f1fd68dd5d234aed90437ecbd6a2148d595b643c1ea81900fbdf7961e83364f5"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
