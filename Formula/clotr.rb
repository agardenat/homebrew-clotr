class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.79.3"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "9e00efa8809b7981c3ea345527cfd8a91ff47c535bbf3ef2c70e52c7283c2491"
    sha256 cellar: :any_skip_relocation, ventura:       "26bc02f4dd19f51ee2c9302c0dd9403c852b734434178cf4220aca268f67bf94"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "6acde3b9e9e80910af64986feb2c0c68df5a3e2e68ef1d972a3446c0f5650a70"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d48cc241e43affcab046567c59b84c76f14941e970d44e09da981b8f983d198c"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.3/clotr_0.79.3_darwin_arm64.tar.gz"
      sha256 "0e3dddfe96184f78a30c352fa4bc3aabb466e4bce53c774a73646f541518166e"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.3/clotr_0.79.3_darwin_amd64.tar.gz"
      sha256 "b6aa826b79e5c92078aa0c5253dfcea5b539810d1fd09321729eb73a1a00344e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.3/clotr_0.79.3_linux_arm64.tar.gz"
      sha256 "875ffeb0cef0efa5f246500c46eebc13bd0e3b40fca7cf7bd4ab4bfa18d2538b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.3/clotr_0.79.3_linux_amd64.tar.gz"
      sha256 "804536f3378f725cc70457e6fe8417a808bfca5bd859442d35005dad323ee610"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
