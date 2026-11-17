class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.78.3"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2be9d0437808da88baefff17781927581478765ab0cc9746a76d2d5d15964aca"
    sha256 cellar: :any_skip_relocation, ventura:       "c4ec0c2c947cf406f4adf00345decf2f1b1757bf4566b25dc2722cdc2b6e3c3e"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "dcaba3fcd0dedda8f82583a3eb4ea125840cd106232491372bfb5217b8202d0f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e6bc53b82d0a22f8720ec7a3b74dfec4aead58f064a67bd7afdf6c8ad22154fd"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.3/clotr_0.78.3_darwin_arm64.tar.gz"
      sha256 "5f94fb1d79967bf3bc77e51451742826ab07033f0dc3d9ca44d36e99f862058f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.3/clotr_0.78.3_darwin_amd64.tar.gz"
      sha256 "7144467d721ddbf4644f42c7c9fd64bbdf4980f5afb64fac2f448114f5d01047"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.3/clotr_0.78.3_linux_arm64.tar.gz"
      sha256 "71d6e16096ce6e64b6f3459319c404cad7c631372cece08b9c9e532c16fab054"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.3/clotr_0.78.3_linux_amd64.tar.gz"
      sha256 "3b8939eca605614a28e620e499820f31f22c65b3142a15c5d3696f2be379f1ec"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
