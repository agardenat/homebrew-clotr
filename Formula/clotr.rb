class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.64.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "633f111f95551eb28efaf4579237e587776f5e33bb8ec2fbc513dc4fa7ecccce"
    sha256 cellar: :any_skip_relocation, ventura:       "c64c52ba292a3293463dee6da7c8baa6f4189ee23e384066611ce2c00ac01384"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "b06fd467be9aaa343f19ef5eb98e10c8eef98ad7fdef5f5c4504e07d622f055d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "841d73600fa0ad6d15fd69bdb09ba7722e5e730efcc9e10be2c1321588ded0a3"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.64.0/clotr_0.64.0_darwin_arm64.tar.gz"
      sha256 "97bb6f8bd92fe808e03b83ec1977128a874d49cf8ae42181085f117d1685d0b7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.64.0/clotr_0.64.0_darwin_amd64.tar.gz"
      sha256 "a288001bbfe5b77145edfdc5e49de9cbde2fa11dc8a0a57b343e59bee63e4038"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.64.0/clotr_0.64.0_linux_arm64.tar.gz"
      sha256 "8b8ee24623d3e54fbbf9bffdd2746f421750bab708075e846f8bd35640c06f12"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.64.0/clotr_0.64.0_linux_amd64.tar.gz"
      sha256 "b8e88053d9f4f963cbea3d0f8d37b09304d3c17289c83f2aea668f8e3b6a1b00"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
