class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.84.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c8a5f415d07ef5aed1ecacc0e436407cd4011fb977148e4a9818b10b68ab35e2"
    sha256 cellar: :any_skip_relocation, ventura:       "4c8af96531a5d470e1cbfd9c07597482a453f740468ce40484f40f6b0afb98c9"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "83f72d9e06d538e602b4f3f601c0b3f193de50034c0c82b30a913d0bf87bf90d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e573967fa54c3f3e784b7f6fd0a59b15f8b1a4306a163d4214b8b9b513c3df68"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.84.0/clotr_0.84.0_darwin_arm64.tar.gz"
      sha256 "43a14aa46e5f9c7b59b836750c31f2a329fb953a9020d1939078a1727884d8db"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.84.0/clotr_0.84.0_darwin_amd64.tar.gz"
      sha256 "60d54ea74d911e22841469fea1addbcf06f21e361d7496617e7f3cc4c1145f2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.84.0/clotr_0.84.0_linux_arm64.tar.gz"
      sha256 "cde2cf467adcf0d1660bce754282f2ca60a1dfc7533c039e477143fbeb1ff692"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.84.0/clotr_0.84.0_linux_amd64.tar.gz"
      sha256 "658a4fecc1cec824c564dedc5c2d7fe0588f1c9cc7c084b842b94a580e8b39d5"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
