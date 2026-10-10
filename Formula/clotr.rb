class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_darwin_arm64.tar.gz"
      sha256 "707ee795e2f2ce10205a2f984d6b641f22c2b29bab2b396229b5d0d79fd39660"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_darwin_amd64.tar.gz"
      sha256 "55ad1d0100909d397615051bf37aaadefb7b6c0ff4ea037cdbd5238bcff45d51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_linux_arm64.tar.gz"
      sha256 "e4bf1813294c486864037cd21ac98097ebd53df7558a56303a73bbe1bf98865a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_linux_amd64.tar.gz"
      sha256 "bf4a85f6749396c5b33158dbc8511e19ed5e777807bee712cf681f09540d7037"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
