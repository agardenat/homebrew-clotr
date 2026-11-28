class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.93.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "490521942284baa7f55fb5e5b3e13f818dab2823fd2319fbf4b120cdf55e5b0e"
    sha256 cellar: :any_skip_relocation, ventura:       "95c46e2918ba8e6edc76d19c0c2cc132b0b3d9910b9198723d9957f3166b61e1"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "de9ade88e8f3773ae49529e84522f655789d058bc4c11c0e966b02b856c9f964"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "532ec56ca08ad318e274d108c5f6b4ce715842de83337b9be22ec11e64da59e9"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.93.0/clotr_0.93.0_darwin_arm64.tar.gz"
      sha256 "790007aa789bb9184d532199f0ee2d4f0b925f027ca60392596fc2cc32bff63c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.93.0/clotr_0.93.0_darwin_amd64.tar.gz"
      sha256 "49afb8a327ace27f55e6dfdcc618ad0a640e448e0d2386e57f80d8e9179e052a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.93.0/clotr_0.93.0_linux_arm64.tar.gz"
      sha256 "e500e36510bc1ca96446d2a61af4db3db4ade90f86f705f15da75915e12bd4d2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.93.0/clotr_0.93.0_linux_amd64.tar.gz"
      sha256 "cb6232578f1da23aa3e051b3a44edef0c806b12f8982ea493ccc5a53211982a2"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
