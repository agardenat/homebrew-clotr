class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.46.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "29b5cd2aafc9b1698be99fcd56decb491b570f6f91348f5bc52927cfd19515d6"
    sha256 cellar: :any_skip_relocation, ventura:       "fe34bb0f214388312f6c0ad72eca2409f290a7021cf4674828a73dafd2a081fd"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "f0f501027817af062cb5ee63ff902f0ceafba86876411a8f8fbf64766d7b97a4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "47943601084472867ef2225bffc4d4c38ea408262da14e2386c38b27497c1c72"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.0/clotr_0.46.0_darwin_arm64.tar.gz"
      sha256 "677f48103bf881af96f932bed7307a7b5f611b5beb388f71c0a298b609d4cf19"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.0/clotr_0.46.0_darwin_amd64.tar.gz"
      sha256 "7fc8e725cc48fef91168f26d334d108c32832b422a68810b658d708f5ba03b0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.0/clotr_0.46.0_linux_arm64.tar.gz"
      sha256 "07a3f79c1a6c84ee1a677aa1f0dcad7b1fd9f553eed9f4d0d1e7733c7864d40e"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.0/clotr_0.46.0_linux_amd64.tar.gz"
      sha256 "d9f9a4bfccf35695430d1c1260b1fafa7aa4417f3d2de98f66e9f07e80fab666"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
