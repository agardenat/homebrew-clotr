class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.18.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8a6efc1ea946da92c82a3b051d24fa7b29841cc6a4a89a356df8c0a7bfabe4fd"
    sha256 cellar: :any_skip_relocation, ventura:       "9e0e9767f4516702117dff88d0c9bc4e32adcdeba8acfcb7445e701450957e13"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "da95d1a05572bbfd874236e7364583bb57388c15243980a41af95acd960ee962"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "252e15c8b5d02e0bddda8aa208b7cf15c525e78098797033aab894be0b36badc"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.18.0/clotr_0.18.0_darwin_arm64.tar.gz"
      sha256 "39f420ebd9e99c07893c5bac24ba9248eba88c23942259512fcb3f52278bfdd8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.18.0/clotr_0.18.0_darwin_amd64.tar.gz"
      sha256 "fb1b5ef46096a050730afdda212229168b106922e220c545b1be840c4fde0543"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.18.0/clotr_0.18.0_linux_arm64.tar.gz"
      sha256 "cac81587b35268312f9649b40bc25238f7ca0a01fa63e93117f24db900f77334"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.18.0/clotr_0.18.0_linux_amd64.tar.gz"
      sha256 "3e4e3029f7a21d85cf30bc20b5695d7e31d9a8592334b5a477113094b57a75ce"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
