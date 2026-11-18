class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.79.5"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "1cd8e68d42a53234b28b4acc4fd9fd7e36c6cd51c2bf147a0fc46644080cc1dd"
    sha256 cellar: :any_skip_relocation, ventura:       "114d1ec596b47417c097ac80206995a95e501ce15a7f5eabc8cf915f9ef73391"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "f251cfafd0c518fc0562cbefa5f75f5592e80e0af44551f77cf5a23752229de5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8d3a52be868170e6259ac52941106211ad9f4c9f1776e2ecb1847018a1fa1604"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.5/clotr_0.79.5_darwin_arm64.tar.gz"
      sha256 "e758f04290de2af2bdc0395b718348c398dbb3bae007dc8fa8bb7e5f656c1175"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.5/clotr_0.79.5_darwin_amd64.tar.gz"
      sha256 "c35033e7dd076d9dd94ee2367c422e8f99d283faeab2dca18588702749fe40f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.5/clotr_0.79.5_linux_arm64.tar.gz"
      sha256 "4888a3f191df9322541ab9d7e98f203cdae21a43159860d18a6df0c8bd5d5e93"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.5/clotr_0.79.5_linux_amd64.tar.gz"
      sha256 "213f423ead2381c7c1786331105ef0dde258a88cb6eb89c31e6b4df96cd01bed"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
