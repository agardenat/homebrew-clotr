class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.91.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "218c82645ce4bde620b84b66554128c7bc95c3456eceb7e88de9630f0c111b08"
    sha256 cellar: :any_skip_relocation, ventura:       "6ff1c229d1080285bb14aff464c37964673d67b7ed2f3696d427f4109f6526b1"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "4b74fa511876ed155f03ef43b9e0c76f6b5a053c20df6cde10e5e6c3d4537fb3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4c88cbe041bfc00bd0f4401651f2a172708c50e01947a475d060ff5d19c1b2c0"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.91.0/clotr_0.91.0_darwin_arm64.tar.gz"
      sha256 "284fba4c7e8194e06ed8ef647651addf981913a3880d8d02d5ee9a9be43e0d24"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.91.0/clotr_0.91.0_darwin_amd64.tar.gz"
      sha256 "f979fd814731fb12b9334aaf832333a0da0b67f4353753e816311a7259308f83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.91.0/clotr_0.91.0_linux_arm64.tar.gz"
      sha256 "04e5ac610bd115abfd6227687a1c464b92fda1fcc35e2aa6b17c7714f25281d6"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.91.0/clotr_0.91.0_linux_amd64.tar.gz"
      sha256 "73240d2633213c11f138d0a5a7d2e69a8bc0ffaec70a17d317415d4ea15c451b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
