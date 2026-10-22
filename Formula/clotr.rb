class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.35.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b72090212c803758539f23502901cc10e8b440a2bd141e0b93595023c6e8d048"
    sha256 cellar: :any_skip_relocation, ventura:       "352e02e1e0be5a0015565cecea8939fa9742379a34ff336fecebc3fc2ae21cdc"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "9790bb6b49d09715b93c6b2f16ad5f09463c2bcb68b094199546717ac6c3e2ef"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b107d01242201d849772b1a94af207fedf0ecc1861b83fcf2d18abfbb96c6c6f"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.35.0/clotr_0.35.0_darwin_arm64.tar.gz"
      sha256 "b7cba11fb154432af88e1d26d82fce163f49da411cf60a63129ecec443528d39"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.35.0/clotr_0.35.0_darwin_amd64.tar.gz"
      sha256 "b9451dcdb3793268bffe5d898f6ead0ccbc8e3a2e9d4e6e4b760c8d25aa55b34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.35.0/clotr_0.35.0_linux_arm64.tar.gz"
      sha256 "e07a7af1741583dcae0e4a03fb91019b8376ae397d7b0a3b0c9fe8a4b2f3ab11"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.35.0/clotr_0.35.0_linux_amd64.tar.gz"
      sha256 "bfc029a9445ff827d6d99e88a9a412d4eba643cdc8b0ba060d4c9f1bc72f81db"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
