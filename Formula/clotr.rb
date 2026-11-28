class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.92.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "bd4790ee15d0428d35b7f260c61fb0126bbb48d1c71efd0f400e4e882b6a0dd2"
    sha256 cellar: :any_skip_relocation, ventura:       "cf6fe740aa4a49fd0ee204dde8b207d7cb63171a729a3f0fed4845220ba136fe"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "83a3394c69b038cdc15950358605af79cbcf0665eb1e163d327da596b92086fd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "91d08a1ab522350deae9655df0c17b760ffb77c6611fcf0230ecf5098b5159c7"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.92.0/clotr_0.92.0_darwin_arm64.tar.gz"
      sha256 "67d940b48c721762df2ca55190845436c4d598ea053e2412095b42eef9a6b5ba"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.92.0/clotr_0.92.0_darwin_amd64.tar.gz"
      sha256 "21dc704edfc4772cc347b7c3eba99b61934b1c25472338c82b3ada3fe65d2c11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.92.0/clotr_0.92.0_linux_arm64.tar.gz"
      sha256 "8de0dc669eab724a5a09d65c984acde96bf88f38cffb54ee321916a38f296eee"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.92.0/clotr_0.92.0_linux_amd64.tar.gz"
      sha256 "19a1e65d0001899f5a21937f835c747ffd9fd0429a4059056ccb55b26797ce2b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
