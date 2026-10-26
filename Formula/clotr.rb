class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.41.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c028f471688b682a7b2ea36a1f1c4f06d01fc8971fdf2204d847653feb1c4937"
    sha256 cellar: :any_skip_relocation, ventura:       "707c19c3e3ffa17b052a2a5d4c66871b0e8f1791136c380738244f57d09c929a"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "b1ef9a7dda9acd33946f9f1c9297aeae2a715da563db12fb1ae92d927484f651"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1489ea4796b71542b269f9b5a8816164c62c1145270f84925835cc113776c166"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.2/clotr_0.41.2_darwin_arm64.tar.gz"
      sha256 "8f196a94e58ce105cdafb247339a055f81f357c70511b1def0306b90630c0b5b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.2/clotr_0.41.2_darwin_amd64.tar.gz"
      sha256 "fb9f48d1a58493bc62e626a863a5d72950024aa717be9c34f6de700eaac3e331"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.2/clotr_0.41.2_linux_arm64.tar.gz"
      sha256 "01db57deea2aa2fbdbb87cec14ae47d4bd5a63289b52f3f4c16a9b71e25a6b4d"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.2/clotr_0.41.2_linux_amd64.tar.gz"
      sha256 "137bed3a20835015bf1eaa358cbb5a4fb594bf120ec47a5239dab89ba4ccc981"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
