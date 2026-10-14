class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.20.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "27d513ab8dbc4a0d35c6550978b083253ec3577b8dff875c84a0ffad2cce4184"
    sha256 cellar: :any_skip_relocation, ventura:       "ccbba2f885e2b7a4555a68607048f4b4ca1fa3d69df83b30063d609036ea8a14"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "9b08bb73f2da152a1b385eb2e9ca6981cf3362782487910cba4afa5858e467eb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9e4ab2e1e8127cdb17ab8781a1f9135ad363b8054b2053e2ae5f8fd8b7ac2730"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.20.0/clotr_0.20.0_darwin_arm64.tar.gz"
      sha256 "6447410c4e9a1142ef0eebfb524e7679dd6cc22fbc333faec04a669d4bbd8da9"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.20.0/clotr_0.20.0_darwin_amd64.tar.gz"
      sha256 "28907a6a0e9a59756dfcb55c857296a690e30ea52129953b41ee8a9d60f6bf3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.20.0/clotr_0.20.0_linux_arm64.tar.gz"
      sha256 "4deb559e8484833353957ef2dfeb7b909de8f8174f57b29fb02d32fc754f776b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.20.0/clotr_0.20.0_linux_amd64.tar.gz"
      sha256 "a5a0b5a0c4a64a8aabfa167ac9481c801b44128f1354f0316890bf82cd392c00"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
