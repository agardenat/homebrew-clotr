class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.25.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "34a45c88920ee57ea46a7af0c39caa49920169fb5d57c0e4f132c2b9767b6aff"
    sha256 cellar: :any_skip_relocation, ventura:       "054185a0a28cde3d4e98a967d9447027bdd57db0af2110c8aae4acbfa110ed6a"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "bf3cea7b90d3297d31c4d594ad006c951a8ec89fd1fe674ee3535fa51587041d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "760b02bf4907f498cd3875f07fa6f7e68426593b1f4f185aa1aad8f262606fbb"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.25.0/clotr_0.25.0_darwin_arm64.tar.gz"
      sha256 "05ec5d3c9c2f637259ef9a64c9321a205e18a95bd9f9fa4b6047123398c36a4b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.25.0/clotr_0.25.0_darwin_amd64.tar.gz"
      sha256 "527a0514036ff6ab98edfefd1822a1c1c9879331aff4d512435a18d12ac6411b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.25.0/clotr_0.25.0_linux_arm64.tar.gz"
      sha256 "f05ec187069d3fe1169153b1b9dbe0ec4a2de7fcca36a873b15e11df98b930bf"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.25.0/clotr_0.25.0_linux_amd64.tar.gz"
      sha256 "4a7d85bfe0ce905df2df300982d1cea508a3e69260b262a6d62c805a6b88c299"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
