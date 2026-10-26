class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.41.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c3448573bd43b2e8a8075705bf9c0bd3eebca41f50d11b52e17f623d584c68c0"
    sha256 cellar: :any_skip_relocation, ventura:       "2ec9853a3dfce10275b547300ce3c7a5b0d602d0fb61c2c7685c180f99ab16a5"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "d52f9680778f4edd3cb8ef95652a242a6153ccf4218ad672f3186b6ab1ea2680"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "66427d1313bd11d178ae23c8db449c354e075035a1f847e6fd24c3bb8e6ffae5"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.1/clotr_0.41.1_darwin_arm64.tar.gz"
      sha256 "8407c6595973287ae4294624cb7a6d22a2b0fc00a18f38c7600574b37a5d3a6f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.1/clotr_0.41.1_darwin_amd64.tar.gz"
      sha256 "1579249d312cb234585860548429aeeaf5d7165aa0074e8419e62a12f2a0b656"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.1/clotr_0.41.1_linux_arm64.tar.gz"
      sha256 "76b1e8b1609e7392683825e1f20c13b36a3345ddfc5c2033a9b6dabd56cd76e5"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.1/clotr_0.41.1_linux_amd64.tar.gz"
      sha256 "59b465ad49cd5e92c267681eeaf4ded725393c5d3d9d2dc69731a4d0b0dac67b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
