class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.33.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "9ee3f7c9e5586881fd7740174c5ce67751df6fee3b062f5bb028aa08c0444a07"
    sha256 cellar: :any_skip_relocation, ventura:       "195ce000fbf9b8834e5c9f843cb3794e3bfb5ee7f17f6d0d024f1152b54c6295"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "61fb8a9528eea511e731fcc3f0e0b3f53db3b77c518bf498b59412ebd5a75acf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9f263dad05950c1ac1477ed2ddf6f410d5618a4616b301c57ce7a0092da54f40"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.33.0/clotr_0.33.0_darwin_arm64.tar.gz"
      sha256 "325a45ecae4fc9de0f9fd85d6544dc13e2fa2e504e13bac182996cb56dc10fd0"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.33.0/clotr_0.33.0_darwin_amd64.tar.gz"
      sha256 "c69c992ab138302a19c41d551bd131585342f5e93fe8d6406453c1fb1be1b913"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.33.0/clotr_0.33.0_linux_arm64.tar.gz"
      sha256 "74c605eb5f75c9fe98e553a08a92b9e1c1c0634d1982cf265268ff8f31119130"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.33.0/clotr_0.33.0_linux_amd64.tar.gz"
      sha256 "14c5d81bbdc8643169e3837828cc1416beb261586fab4526d651324a031c2316"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
