class Clotr < Formula
  desc "Read-only multi-model agent CLI for Kubernetes, Cloudera and MCP diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_darwin_arm64.tar.gz"
      sha256 "5c33e1b31c0dab7c159b42364d6df82cee1702f7362a62c364bb21f576e8b3b5"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_darwin_amd64.tar.gz"
      sha256 "1f03c827c5fc5e0a391d07b6b867e9bc114fdf970f91bf0d3527fa2de4fbdd3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_linux_arm64.tar.gz"
      sha256 "1d833e2e8ccdc46abd39f22bb7c3e5b00d97ec21692106e8b68341ddc356b56a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_linux_amd64.tar.gz"
      sha256 "d076e401de9c28c97fdd5097b873b3d86f70d0ca31610a72309a4b3dc5812df1"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
