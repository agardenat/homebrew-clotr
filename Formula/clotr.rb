class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.19.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "0573c2a423726a2a6758226c9be8bf40749494ccdf2e7be4d9e978ac80d49ec4"
    sha256 cellar: :any_skip_relocation, ventura:       "51addba4ef1b44be99f1370c05e48e4346a3da4ccba3da4aaeecdee50f7e6bf1"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "33fbb9ffcd513bb692c60affd426d97fcfe15c443fa041d36f3041904fde8c50"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a30d458fd7cf7e084f399a30ff998973ab086cc83667459929115e7965784e82"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.19.0/clotr_0.19.0_darwin_arm64.tar.gz"
      sha256 "82ec13082fea4ce4597975797a0824d618b3ed7d93d0d56877220c93294602ea"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.19.0/clotr_0.19.0_darwin_amd64.tar.gz"
      sha256 "90f3f503dbb28f3b2bcef1ab96aaff7565bdc83af6f9dac815c1ef3dd8fe6b81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.19.0/clotr_0.19.0_linux_arm64.tar.gz"
      sha256 "24673f44bb808dcc0da8a9e5639a37acdb6efddfb3ec542c74d3d2b69bd42bb3"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.19.0/clotr_0.19.0_linux_amd64.tar.gz"
      sha256 "fdd7ca568927b11217d2c67e4542c27164bfaa7df00c215950f403f2c32c6995"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
