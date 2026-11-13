class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.66.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "a5cb013461d0964da83095aa479735cb02141b4f38804663d55737c667ebcffd"
    sha256 cellar: :any_skip_relocation, ventura:       "d3b646d22cd819aa7b3a55630c515e2ca4b6061b163b7f370e6c304ae889adcb"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "9892b1601bfe713ac7cd184e82ce89338a59db5a22cdb2e4b6fe979c1aa55260"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3bf2dfc1ef24c41e53f3e82d121eaab794cf670b3ed792c1d9b96e201c66824a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.66.0/clotr_0.66.0_darwin_arm64.tar.gz"
      sha256 "0d7f6afd2f6a40ab8b8209e1fb8b87f5d68779fbb093e3fdd01172f01fb24dac"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.66.0/clotr_0.66.0_darwin_amd64.tar.gz"
      sha256 "db468b9ecca509b38091265755c4c20662c96dd85f2dbc62ecb36493ea617735"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.66.0/clotr_0.66.0_linux_arm64.tar.gz"
      sha256 "ec079fa78c38c0ff80ed93b1f9d7fe9b3087fea3d21078cd3cf585f3990d312b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.66.0/clotr_0.66.0_linux_amd64.tar.gz"
      sha256 "db8048b519ca7e8975e2855e1838c1565e07340c487be7008bd914e4af2a57f3"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
