class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.78.5"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c700331731d204b6ccb62c8cacda5e20e3ed7fdb9f949b43e7917757fa94bcbf"
    sha256 cellar: :any_skip_relocation, ventura:       "481a4c591be8d12471f235c4623209e721e2d9f16aeaf850e792aad1c8cfc14b"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "ec5ed820c536480f0a52620c538650096c3f24cc582df473974c00fc8ff00865"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ee0ff6be7ed81617a48deaff5c9f1c0ce27546c5716f0330713501157ae86f48"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.5/clotr_0.78.5_darwin_arm64.tar.gz"
      sha256 "a5e0d0c111e690f0cddaa4664fb8db924affca3bb5eef35da99fa36227121047"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.5/clotr_0.78.5_darwin_amd64.tar.gz"
      sha256 "112bead6debd756c8953b24f3e3444499d168dbfc832d504f01edb16a925793e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.5/clotr_0.78.5_linux_arm64.tar.gz"
      sha256 "9756229c95acd7592b0cc631b23b4f1543b1f0111d41e83c8c54262fbc77114a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.5/clotr_0.78.5_linux_amd64.tar.gz"
      sha256 "f33e05e7a504dfbf41ead903e87269a7f7d75d747baa20801a5ee7158462ebcf"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
