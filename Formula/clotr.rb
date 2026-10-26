class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.39.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c7feb5c9c484c07a1b28bea78c2a8a0de485378303f474fab84f6c3d9be81ba7"
    sha256 cellar: :any_skip_relocation, ventura:       "9acaecd78179d3d37a2209e32cb0f7a5afd67ee1af705655f87ede7b33c08254"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "75788b9b1171b2efc124f446d42ee0f2057371632374a6d4437a3665b907713a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "edbaf565296ef577453e53930f6f23c77f0455fd0542d42d12f39d0122ca1f8b"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.39.0/clotr_0.39.0_darwin_arm64.tar.gz"
      sha256 "7a01935fe849ab7e2257ec6d401ba4054909ab7e3ff053e12a2d1fe091ece4f9"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.39.0/clotr_0.39.0_darwin_amd64.tar.gz"
      sha256 "578f8d500ac49721f2f249efdb05a4d01bb06616f2395e1dc873cb7502a9ba8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.39.0/clotr_0.39.0_linux_arm64.tar.gz"
      sha256 "dc869cfe74746e5094153378e164cc4cd37cd8628da8cab0293180eedb3deea6"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.39.0/clotr_0.39.0_linux_amd64.tar.gz"
      sha256 "a72bf8a98aa70803f4a6636c26e185d9360898c1fbf645013231555835908b2c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
