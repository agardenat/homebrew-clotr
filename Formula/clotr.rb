class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.15.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "123008c4329d9c3f5827497df43ea49e78e47a95e27cf9ebcc53472b6e4259c7"
    sha256 cellar: :any_skip_relocation, ventura:       "7226a77ce361ccd3c4a84944de15888de7bba6de876a10f94e02cfa5030035e1"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a7abb964b63a5306098786a7a31385c9c20ffea3fa9883e7afb7d60aea306c6f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a669a46ad8ab2158835438125366ae841e84c82c6bec8511ebba28cf223643ea"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.1/clotr_0.15.1_darwin_arm64.tar.gz"
      sha256 "8a588b17b9152cc49485353ce263718e0761acc256dd47c50c3ef5896976ed03"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.1/clotr_0.15.1_darwin_amd64.tar.gz"
      sha256 "5bdb22a49e9aa193d22566d751e7364f19d76562003022f99b2b1560ff2b0306"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.1/clotr_0.15.1_linux_arm64.tar.gz"
      sha256 "312585422948072044ddfd1fcb240470c8b1c25a3fee0cc0f4657c814ae1e464"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.1/clotr_0.15.1_linux_amd64.tar.gz"
      sha256 "db0f5891d4c43ce36f8f9ac88b3c277724247535ac08a560f1e1613e89e11ebf"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
