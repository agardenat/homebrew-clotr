class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.37.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "a985c36c944cd33c1cb61cf129ad67ff580e9de457bd45898d04aace2458d35b"
    sha256 cellar: :any_skip_relocation, ventura:       "b50d983b37a3e053bff43acc9b27f1dd883d603c3a9779544fe29b143cb916d2"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "5613d052cfe5161e22aa45bfa8326c05e6d476fc834321e63e6e1d0786b10df0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f69a7858f4184c2006dc4d2ed3df23f46d967f4575994e5ac825a0e494eaacdd"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.37.0/clotr_0.37.0_darwin_arm64.tar.gz"
      sha256 "85f45f399b0a56cdb74a3b89f910e3687916af4824da38c6f48455e5793b75ba"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.37.0/clotr_0.37.0_darwin_amd64.tar.gz"
      sha256 "9b4db4ccbaad28bb4f210101133084ccc339a5bc0a700c017d86cb190c5f1ca0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.37.0/clotr_0.37.0_linux_arm64.tar.gz"
      sha256 "ee00425780e22de06560a502dd86717af64128d284cf1ed3d05ab481226f0259"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.37.0/clotr_0.37.0_linux_amd64.tar.gz"
      sha256 "e08e34409f256a80a31bd8de18c5db05d0b084afcd367c4d405e2ce57a07d24c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
