class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.29.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f98c24a9a82a1f807bca058ce5e52c92d83179b10e4dd80979712f7e6b0972e7"
    sha256 cellar: :any_skip_relocation, ventura:       "1ad5a81abb37255eba5a78af6c28465fbd9f1da82678e5a80c8cd4fd81491a7b"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "781499ec8ad323038c44ca9accd3a542bdfa6815917de82e436d301571066478"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5ebf72ca80738a897daecee480a36b08e2e3d61b0107f59b56de855d5737c891"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.29.0/clotr_0.29.0_darwin_arm64.tar.gz"
      sha256 "47f9d0da3376053fa61336c2a3d8524760ae1542fadf805d9185dccb72919bd8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.29.0/clotr_0.29.0_darwin_amd64.tar.gz"
      sha256 "9090f5618c27b38ffc81ef7c3665654d2ad0438bebef50b528fcff652ba3848b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.29.0/clotr_0.29.0_linux_arm64.tar.gz"
      sha256 "2d8d67ac5c2c336a82914c2eeeaeb8a618b22023bc95cecf55dbbccd73c65c3e"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.29.0/clotr_0.29.0_linux_amd64.tar.gz"
      sha256 "04ed8b68e4a8fadc8bf31cac744b155dee6978ba8acb616331fee97726454dd6"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
