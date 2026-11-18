class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.79.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "ccb5eccf46e064d951631f80d726eab4aab8989eb75e47be700b9213a7ec8e49"
    sha256 cellar: :any_skip_relocation, ventura:       "aa215414048f09aa9d6ab4f224e77f1cf78ec881b16049c9322a704689a7bd73"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "fac26195302b6486aa763d9366a7de807bd826c0f069400982bb1e410601733e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7fa03af6125043a6d9df28d32c4adee206478ef7507343a0f2f8e2360ce08618"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.1/clotr_0.79.1_darwin_arm64.tar.gz"
      sha256 "2d89853a7253d770a51287ee63cdc2e9c91d7b50b70ec3f6fe7c8f8b9df0d2aa"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.1/clotr_0.79.1_darwin_amd64.tar.gz"
      sha256 "5dcbd3752bb4e91fd183e5f0375ebcfb3fb480c62c3209d80d78d3e5a84e3c03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.1/clotr_0.79.1_linux_arm64.tar.gz"
      sha256 "e3b93b5401de011da6d03926e0ad200243fff913fa9c5b413b3ae94032f2cafe"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.79.1/clotr_0.79.1_linux_amd64.tar.gz"
      sha256 "6710ca149d920387e56918e081cee0e225f63388782972f201effefd9be9ec8c"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
