class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.88.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e8df71bae471c0b50d61426a2cc40ca39cfa35d6b9a02716565c65e7c61f6fcc"
    sha256 cellar: :any_skip_relocation, ventura:       "ed5f3db2d440e60ce93d7bb5fce5f8dc8ef03fc7fff8171d283167a544231c69"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "4c37a6b1758cc99edf90a1888ba9944e4df4f72d02548d3b38fc3042872c5aa3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "01309d84085c5426db53a3e289908c9ec69740fdcf3b58579d181e007a886acd"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.1/clotr_0.88.1_darwin_arm64.tar.gz"
      sha256 "584d93a96f98f199122f6e6cf88694c8b3a0ac488b91073952299f15712e478f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.1/clotr_0.88.1_darwin_amd64.tar.gz"
      sha256 "5ec677e354965349da5ec5921fb776a559f524c3833d8b80aad6b7a716659102"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.1/clotr_0.88.1_linux_arm64.tar.gz"
      sha256 "bcebf5765fd04c3db009529383011fabec6c4067759675ba540073be4157495a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.88.1/clotr_0.88.1_linux_amd64.tar.gz"
      sha256 "bb50035fbb8633d45e16e2d5856eb935585cfe7f4d968d17f782cabe8b0521f4"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
