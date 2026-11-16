class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.73.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "71cae7fb1559ea592d4e28ec7d98d10be8ccc36285f96e46e701b68cbbeb9e19"
    sha256 cellar: :any_skip_relocation, ventura:       "902a855802e2ef569497c524468ccc2c6bb6d9fd723c630db584ac81ec5c1b0b"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "73099fc12935d95365017f8f3a04fca0a6ab5079fc913548a14b73f70ba3666d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7e847df6e7994a63e8634e8b4a44ad0c52592cac2d134787c5042d58208daba2"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.1/clotr_0.73.1_darwin_arm64.tar.gz"
      sha256 "1d982b0900630a1326c28d0604b8aae12d78f279283691e10cdef49a684b19f6"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.1/clotr_0.73.1_darwin_amd64.tar.gz"
      sha256 "f1dbcff86ee58d9aaecdf718c3e66e9db7498bdc378a95d39fa5c456112dd134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.1/clotr_0.73.1_linux_arm64.tar.gz"
      sha256 "c2428fa85c9b8713adcd975d721ab3ecaba8285ae9b44670fc0326b7475f8714"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.73.1/clotr_0.73.1_linux_amd64.tar.gz"
      sha256 "4e2281f30a03ece36cce0a657a38f7bcd081a644a81c15bab3c4388840f52fac"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
