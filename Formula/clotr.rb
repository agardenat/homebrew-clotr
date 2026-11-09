class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.58.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "503379b014e43893d4740eef078dd2411e532e78d1d1939536e11f17f463a4ef"
    sha256 cellar: :any_skip_relocation, ventura:       "954755fb3e9a2769f9b58dbed43aae3396c0c5f150a20d562fa227adb0a3d141"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "861339abd86c328d21f3ade043cecce89beb452fcc275a82b848ef987e30edce"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c23c1fd2165f81b5c6889613a69906b46459a8bd731ffc3b98985a42967d41cb"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.58.0/clotr_0.58.0_darwin_arm64.tar.gz"
      sha256 "c1fe29dbde1c97bd2e8a40936f33a12cc52b7cf12130c7afc756934c1140b293"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.58.0/clotr_0.58.0_darwin_amd64.tar.gz"
      sha256 "04b8f2304a9dc970fd93a8964ffa632b1c16a3644818072c1f5cb576d26252dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.58.0/clotr_0.58.0_linux_arm64.tar.gz"
      sha256 "9f29bfe05fb368a063a954cc8a68b09df584ff01484143657602920530ccad95"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.58.0/clotr_0.58.0_linux_amd64.tar.gz"
      sha256 "f24419b83561f77f719c7edc944143d0559940f33ad3ecab9072e5eaf29e8986"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
