class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.43.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "81936976c045bac0a48c00104be5c23d6e491f1e5dc3d9c7273261ada33e89f3"
    sha256 cellar: :any_skip_relocation, ventura:       "48f3f922c73e69c47d8cbd6eff73c5d1fb3200972748a61bcff794aa9105e72c"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a6405ad08e32c6adcac817f7d2d7daa54bbdf3d6f470abfd8b29db86ea872af4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "01211cdc7c1d4d1403749d4ad63a75d47ec04e2e27f955db18eca394cb955cec"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.1/clotr_0.43.1_darwin_arm64.tar.gz"
      sha256 "7dd0797a2740ae7f5bd04cd1333a0c9902ca34d02ee5874ae033a6345f9c7e7c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.1/clotr_0.43.1_darwin_amd64.tar.gz"
      sha256 "344d58112a407372140457b2f64130ac23742e5107fdbb3e91c49035b832f1df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.1/clotr_0.43.1_linux_arm64.tar.gz"
      sha256 "744aecfe61b5855f804b6eca747d3c8b03f2f146641d97c0804bebcd29a27d48"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.43.1/clotr_0.43.1_linux_amd64.tar.gz"
      sha256 "3e45dc5eea47ff6bd5c14ed3bf0157be352afbf5fd63227dcfc423b4fff07e44"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
