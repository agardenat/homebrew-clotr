class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.8.0/clotr_0.8.0_darwin_arm64.tar.gz"
      sha256 "3d75907d860fed5c43441b940d692d7f19adefa13c8c03749095312f113b2b4e"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.8.0/clotr_0.8.0_darwin_amd64.tar.gz"
      sha256 "58d7bc25f75d370a0d35dad8f1fbc107c34a8f00a9cf0bfd19f289a2c1100d17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.8.0/clotr_0.8.0_linux_arm64.tar.gz"
      sha256 "7c41e7862362ef63d1ae76d9a4952ce6eb669c085dcd7837755d072b851510c6"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.8.0/clotr_0.8.0_linux_amd64.tar.gz"
      sha256 "5803dd720ebe0f91b312fc09ca5f88484bf581fa63b35c54b0e05c326aaca246"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
