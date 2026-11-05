class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.54.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "a37cf4a2976f44b77dd0bb72bb7baade5cb390b1c3041ff5c157f01872588818"
    sha256 cellar: :any_skip_relocation, ventura:       "4c7cc053d04084e3701cda185a445aa2a4eee85d49025a22e261d13e2d55eada"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "4d267702ff12218c3ffda8b8442f95870b74704b017d2bef8d86aca5996c4498"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c35e6df2c402f0d4ce3f740c1da85f665bf6bdc236fc4f8184eb00b886a50bf7"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.54.0/clotr_0.54.0_darwin_arm64.tar.gz"
      sha256 "96e2842326b988555f9cc8f4e4f3a4fd3aeb0cb2b39ba459579d23e8c28964b7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.54.0/clotr_0.54.0_darwin_amd64.tar.gz"
      sha256 "4f493ce67610983d713575a1abaf570a4272af1127299071320a2cbf82cae221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.54.0/clotr_0.54.0_linux_arm64.tar.gz"
      sha256 "11f52db8281f083fb30fa3d1c6eefbbb8ca930ebdf1aaef1bc9a060d9aae259a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.54.0/clotr_0.54.0_linux_amd64.tar.gz"
      sha256 "69f4b34092c4e74dd7d731b7158b80abfd7c35f2d563915ecef98d319008be7b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
