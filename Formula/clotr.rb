class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.21.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "421bf750263e82206ae091494ee2925a3b3fdf53981c624b1b3e54e161eff966"
    sha256 cellar: :any_skip_relocation, ventura:       "6d8c3a4e2df648179a46d3cb0216ba7984df73df88965bdebc1510dbc2f29284"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "f04f581e6c99928cd3f14990cf0fc2904dffd5c149ceacf68ea56a6e4d11abab"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f8c0942d131c95fc8e7f543c865e1d763a899ed21cdf3b8b885b4c6a1e13a5cd"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.0/clotr_0.21.0_darwin_arm64.tar.gz"
      sha256 "c539d443ad62adf9a5dba4d438a9eed950c9dada233a78f98e0129c1f6e1b5ce"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.0/clotr_0.21.0_darwin_amd64.tar.gz"
      sha256 "f462636e6a2a8aa0c0a02c7218d6569a1f52eb7d2af72eb7c4f5d521d5cae8fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.0/clotr_0.21.0_linux_arm64.tar.gz"
      sha256 "59af70adce93833f3b2dfa083930fd3867413693afdb257120ae432413fdebcb"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.21.0/clotr_0.21.0_linux_amd64.tar.gz"
      sha256 "0ae3984b5c6b69959ceb21b9bb84a8eff3647de7e5f06841a0ff1a7fbda4b257"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
