class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.61.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "14b9b2c4202a009e382877981ccbe91f977e353e53a5148246e2345c19877a28"
    sha256 cellar: :any_skip_relocation, ventura:       "4399f11c76b2d9cdbb29a422863f02f474a08c418a8ee295d2c1c0fbdff521ed"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "748f3e128ec074f044360a91be0ad16f4a190b26cda4dc7fb94116286f6cd539"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "44208630a4be1c2f9c95d492e3c9c14c40b16125cbaeee651640ac6e01feddc7"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.61.0/clotr_0.61.0_darwin_arm64.tar.gz"
      sha256 "91569551fd1315b65d052521229da100671f3236c9f593747da8a4154f26fc9c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.61.0/clotr_0.61.0_darwin_amd64.tar.gz"
      sha256 "29e1417245f3ff1eaa00bc18e4a02048450aaeea6e3a2edddde8685296d3e527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.61.0/clotr_0.61.0_linux_arm64.tar.gz"
      sha256 "d15d7c2d7ece4367cb7a03d0cae7768b8aaadee86a20c45f123a6e64e2737d51"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.61.0/clotr_0.61.0_linux_amd64.tar.gz"
      sha256 "88c9d1c178fa294629b525f47a461f2904e6c13f3a7f851cea5eedfe59bb4f9e"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
