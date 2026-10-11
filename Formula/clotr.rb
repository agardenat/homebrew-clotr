class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.2/clotr_0.5.2_darwin_arm64.tar.gz"
      sha256 "38bd2d4edcdf58a693f1c6c4284191a7954103df092246573078014e5da7b71c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.2/clotr_0.5.2_darwin_amd64.tar.gz"
      sha256 "b1df75ebc1631f9710c92bc5d0e72ab9d728f69e2c4ef5bfc9d63858d486c568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.2/clotr_0.5.2_linux_arm64.tar.gz"
      sha256 "96c996f8981a15fe4c1990139269d5eaf021b8f00aec6b71a9bf773930b82a18"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.2/clotr_0.5.2_linux_amd64.tar.gz"
      sha256 "deab2a3f3972ab37046ccfa35787bc802436422dde01647bc45cb53d80b5dba1"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
