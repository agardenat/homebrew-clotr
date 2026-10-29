class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.47.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3327f780acb91fe00135cea419abb5f6ea988038b30aa4fd7ddb5e286375cb18"
    sha256 cellar: :any_skip_relocation, ventura:       "7f1ebcaf53d50d19762fbce78d77368a28b3e0501f2ac8415670c13548d4cec6"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "107bf8f36e56d17d36f851741ae3aae56ef50178abed857d8cac592171e366f7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b206d44b4375201e3fa3a9b5c495ab8c5736a95c5e5fefcda7d64f02d2cdde3b"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.2/clotr_0.47.2_darwin_arm64.tar.gz"
      sha256 "6664e4270751b759b6ef0146b56f8211e2dc5bc13214d9fb6d1d3a82241baec2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.2/clotr_0.47.2_darwin_amd64.tar.gz"
      sha256 "75672341b643a8d37feb2a72cee50ccd653c8fbe61c23bdd23461fa7e3334fed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.2/clotr_0.47.2_linux_arm64.tar.gz"
      sha256 "f8099cd8d9e9cf8a5288cc51ff3cc8b4f95c020fcadb3d668b83309c31b023e2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.47.2/clotr_0.47.2_linux_amd64.tar.gz"
      sha256 "f0b92ce39c47e4c279c8f24dd876c56c27b53622fab5229650ab73e8363ae2b6"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
