class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.78.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "eaa1152b625efaed131117c26d7bb79bf10a51cd434b450b84a879f52872c16d"
    sha256 cellar: :any_skip_relocation, ventura:       "1716a6097342ecdb6705a39489c69909be2cb08b0df79bfeed377d465902cc45"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "c39fda32d2c6e953f4ed860bfaaaa741be4bd5f2539b678dea1c1fda6e7c5b9f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c29aad9f136742a1fe63c18939b0c17ef54537b2cb43b381eeabd2db23bb8c47"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.0/clotr_0.78.0_darwin_arm64.tar.gz"
      sha256 "ce4faf7d793be3b29d1db89b2dd4fa0632c72fd057073f46f3b5a829131e2eb8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.0/clotr_0.78.0_darwin_amd64.tar.gz"
      sha256 "28083eff6aca5ce4c839a5c19b794c37f5e1f71a197e68e44f378bc3c39f74ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.0/clotr_0.78.0_linux_arm64.tar.gz"
      sha256 "854c2064447585fbb0cf575ce04758c206400c630fbbdbc399aceb4b4328b884"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.78.0/clotr_0.78.0_linux_amd64.tar.gz"
      sha256 "2ca6be66f2693e163530e14afb101e94d0d03ab5cf2dc80ccf8ba778406e559a"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
