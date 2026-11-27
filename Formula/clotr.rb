class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.89.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "9910542b5f39b0a4e1b5438f97a6b4a97dbe83d146143689a6c7becb5406629c"
    sha256 cellar: :any_skip_relocation, ventura:       "6914bac418a4391128bdf7c7a4dfe949adfbec7f8bb59cc10216a714f5cd10f8"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "10c79b1a177ad0b06322ef1b106c85195b09c6dd0741dca9dd36e8fec957bc96"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0b3d94b652bbf90ad75218bfb9f77ca02cdd6f45fbe9ec84d574df88df9eeba9"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_darwin_arm64.tar.gz"
      sha256 "6049ee70fa5431917e4aa35c4c585ebd9450bae5d42c7ad27473f4dd0421eeb7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_darwin_amd64.tar.gz"
      sha256 "795a04f7c245e63263be2398796abccd0afe7cc6ecdd32b91747d3ec79a2dd08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_linux_arm64.tar.gz"
      sha256 "97b150666610b80f4322857f74390cd8a453d320571338aa74585dfd7e418421"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_linux_amd64.tar.gz"
      sha256 "61aac5ff510db1c154c50314b5f2c58f154dda3fcaacb015f0f57898f98dd9dd"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
