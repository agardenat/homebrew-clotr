class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.2.0/clotr_0.2.0_darwin_arm64.tar.gz"
      sha256 "d0f29af0f38ed832e525bff615f896a928d83451190c9abc716c29f47b9be8bf"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.2.0/clotr_0.2.0_darwin_amd64.tar.gz"
      sha256 "4d488db2732ad5fed0a641d6fb1f665743ce2bf3fae50ab6cd2406bec0de4747"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.2.0/clotr_0.2.0_linux_arm64.tar.gz"
      sha256 "119f4aa2e8984fe2f1d1ac56a7f24ef00c45aa50ce0cfc9eb857a39519192ae5"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.2.0/clotr_0.2.0_linux_amd64.tar.gz"
      sha256 "151febbbc6ec60f61c18380eb6413969de683af09f64ed283dea1b4d2b58f44d"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
