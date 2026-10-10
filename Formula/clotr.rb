class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.4.0/clotr_0.4.0_darwin_arm64.tar.gz"
      sha256 "d2f2af5e2ef13a84a379080acd1063b700a73c031d5d4313ad7a216ace57ae0c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.4.0/clotr_0.4.0_darwin_amd64.tar.gz"
      sha256 "0631612e73b64c7f720acb8f019823ad629e0cdc0f31c5e02b2579e4924fed04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.4.0/clotr_0.4.0_linux_arm64.tar.gz"
      sha256 "6b8cbcf51294376d1a5e385e3d02ecbed7b0a2e97c4e386df46a0aa13cde12e7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.4.0/clotr_0.4.0_linux_amd64.tar.gz"
      sha256 "e2f0a4b3106cb8e35a62369b334e7ea37ffa8b6c52419ff5a244dff8769b7e67"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
