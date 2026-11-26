class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.89.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "0d3a9fc449b7604a0d52df1502f341caaa1251ae7d2b0813f04d29ca838b9e36"
    sha256 cellar: :any_skip_relocation, ventura:       "8937ae1fbba5d3a72417dca43a0c6e3db9e794a7cbabdfc6f52541c64e6acfec"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "aadd20ded8abe40f1e7100877f5a87c20f36deca2c5b5c817cff14d5d743eb6a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a8c0592cdb891d31810d8f841db569b626daf18a3e69a031ebd130976326d9e"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_darwin_arm64.tar.gz"
      sha256 "54e8f3536a0e21eb299ffa31bd3f67a0539a28909c619f73bd9d8a27e55b4e48"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_darwin_amd64.tar.gz"
      sha256 "0cd3ac8d04e28593cc420ba93f64089f57d304fce46e15262254b0ebb762b9fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_linux_arm64.tar.gz"
      sha256 "69e08e4455710251894149b0e75842136e2ed7a2fb42880e5c9cf47d5483522d"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.89.1/clotr_0.89.1_linux_amd64.tar.gz"
      sha256 "c61bb534e5ff0fb3e37477adcaa017589c584824cdd9c5c96d445537bd0ff643"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
