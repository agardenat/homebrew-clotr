class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.68.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b3a17772b67ee6ca6fb83405d1ba505b5bc23539a82bf4f217a02e10c3b95686"
    sha256 cellar: :any_skip_relocation, ventura:       "8d7f611236d3b443b537ce90a71e5debc79b5e97e29d7e39a6d38c5c9e9445c1"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "00b3febd9f53071bba231b699d5a3eef3e8e1b9e138e443e5bbb2847d4409c66"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6ec20a11004c69ee068cc00bd7d96252c100223cea6f8dc4d6c74d4dfcd16d0e"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.0/clotr_0.68.0_darwin_arm64.tar.gz"
      sha256 "59a583976e7b2e182d653e7f365c1a4da53a822858eec478e6e209118aa7eb86"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.0/clotr_0.68.0_darwin_amd64.tar.gz"
      sha256 "a9a981e118364b1eec16a29cb6a7fee4969bd79fe2e0a4d55b1763025116afb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.0/clotr_0.68.0_linux_arm64.tar.gz"
      sha256 "6bd3a23899660299e0fdf16459a5d3217fe809cfc7cb1311f79bef34a19ed53a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.0/clotr_0.68.0_linux_amd64.tar.gz"
      sha256 "f5e40ef20214ec79020812917941ecc856a7d0dbbed3537b0e668035fe68c313"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
