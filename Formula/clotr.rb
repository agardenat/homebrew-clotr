class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.24.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e9307820cf506725b1b758983319b78eb8ba10ce7f2dd1f3654f9bea9add9427"
    sha256 cellar: :any_skip_relocation, ventura:       "65eaf8c98c155d7604524c1f1a72aac62d95a2c76b56c10e520ec215d5de83c8"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "0a389e294d21550bc1dc8a77dc3c0a5da637fe34044b38f5512aa72b4e0b9bac"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8f4a5286fbe0dea1aad6dde0f4030df65c156de3d293594454bac7d6f593a072"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.24.0/clotr_0.24.0_darwin_arm64.tar.gz"
      sha256 "d78d33bd1d10513e3be2ef178468e7692dc8dceb4f2544dff9c2b3dc9559850c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.24.0/clotr_0.24.0_darwin_amd64.tar.gz"
      sha256 "c1e1951bc289b2de8e232867635cef8f6cacc3758c468114df07b468366798f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.24.0/clotr_0.24.0_linux_arm64.tar.gz"
      sha256 "200ab834b5b16408ad05a25c2e7ad16ce44cfc6e5ace2be90c127c90c5b2bec6"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.24.0/clotr_0.24.0_linux_amd64.tar.gz"
      sha256 "8d10adc3163602c23cf45d77316ad9e1612d4c62c2ab848b24a8847e576c78e1"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
