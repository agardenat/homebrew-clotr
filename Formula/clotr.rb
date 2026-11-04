class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.53.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "23373876b9ac21c150d1d86d7094f4e244c14f2c43f715733f638d03da3a3783"
    sha256 cellar: :any_skip_relocation, ventura:       "a668baac043d0a8f29b23dbabe04ff8c1026c877ac36a204b21d9b7f962aec76"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a853fe56d0aadc9d7c67d4331099f24c7ccddcdc0f9ce91bdf14a37bed9da776"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "da166f4a91e69af171ad7ec675ec174861c8aa5f03a296ec6c6e3bca4009b94f"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.53.0/clotr_0.53.0_darwin_arm64.tar.gz"
      sha256 "491698c1e10199d4bba228c78f443c82f8a682740c63e673cb3d2a2cb647051d"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.53.0/clotr_0.53.0_darwin_amd64.tar.gz"
      sha256 "9784b0cdf59d332f4d7c3430dd3aa6ffb57d86203678c254473a460f29fbf9ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.53.0/clotr_0.53.0_linux_arm64.tar.gz"
      sha256 "46d39f4a7653c19d0cc4387d73253d5a94d0242e4eff02b74693b8021efe7ecf"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.53.0/clotr_0.53.0_linux_amd64.tar.gz"
      sha256 "0a77490392dd8a7f825121854a3b8ce1f1a6b7c30b9d8cf6d0411b8a656a2ca4"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
