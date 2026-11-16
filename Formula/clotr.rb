class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.72.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c8e4ae94ebccefa965be36e4797212c1a2eaf4bf91222e6bfbdf23331b20803a"
    sha256 cellar: :any_skip_relocation, ventura:       "980b70dad020e9a2740c684dd1c1342506bb6976f4dfcdb01c17726ae1d8d41d"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "20a47a881e9cef10c6ad54137dd364220e2a4fac6f98c02b54836ab6f1c3b8b5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "05330c97ee2ada2ac7eccf25bd6c703069bcbd1c72bb9197b19c11e8178752c9"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.72.0/clotr_0.72.0_darwin_arm64.tar.gz"
      sha256 "19e045baa9eb8741d8f40c071ee56ce41af4cd728416f9afc8580ded67096065"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.72.0/clotr_0.72.0_darwin_amd64.tar.gz"
      sha256 "27719b99e032bca054f9c0f97c47d2f64495cf079ea7d910bc35df0d02cdcee8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.72.0/clotr_0.72.0_linux_arm64.tar.gz"
      sha256 "644987d0c9133aa4da90c8746ec72bba67707124873da92837e9793c998c0be8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.72.0/clotr_0.72.0_linux_amd64.tar.gz"
      sha256 "805c21c7b3e52ed2c8140a55a29dfefc14a4bb448eaa3c1006a8aaa19993102b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
