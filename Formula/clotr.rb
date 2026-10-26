class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.41.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e93371f1cea7447b52739fb2b0eb261ace40be6c40ad51571e1b4fe94982a304"
    sha256 cellar: :any_skip_relocation, ventura:       "c4a159b27dd893c29aff9cbecaabd32ad61105bae6e14a6bc806f948d03400f5"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a2b6de6d1f8d88b95aed325a4357037fa480cd407a01d634d699603a2d9f5932"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0a959c1d0c44b3957e47be7fa4c9e3d8b44bc6d89bb8ceef863a996ed48ce077"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.0/clotr_0.41.0_darwin_arm64.tar.gz"
      sha256 "3d34fe27aafc950774fcb767d8ecdab63ef0b99d451d6bfd1eb5ab068be7cb02"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.0/clotr_0.41.0_darwin_amd64.tar.gz"
      sha256 "359eb7551ff96aa6bfcc84a83d1f894252605cee87e4057b96d62e37f67dad4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.0/clotr_0.41.0_linux_arm64.tar.gz"
      sha256 "f27822ff70bff753037bfb498f0e28c506e6c77f78bdebdfc2731f4743c983c4"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.41.0/clotr_0.41.0_linux_amd64.tar.gz"
      sha256 "b4441a438691936fd5a4d3ebe3b4c43c58bd7dbb1f7ca3e5346735e45a9745e1"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
