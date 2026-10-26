class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.40.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "6b1850f0f48c1e44c2aa1ab9ce9f7100142df6c326ffaec0a8ec3f862ded19ef"
    sha256 cellar: :any_skip_relocation, ventura:       "713afe972426de2c67512481e1a15ae693413c9d87f937215c148567b9bba8c8"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a5658e68bb261347b043212b9b5d1c1f709ecf56262e94fe05a0c1b6f8116baa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "63f94693e716a195e3e548541f19bf15f36fd10297ee7f1a382e728633ec5eb5"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.40.0/clotr_0.40.0_darwin_arm64.tar.gz"
      sha256 "570d94be724e130f5e55780ce7c1475e80788c5f416195597ad4de836ed2a8a3"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.40.0/clotr_0.40.0_darwin_amd64.tar.gz"
      sha256 "ee09f9dc08773d7490d58eb355bae780e22bc2866b6ce6a7b4acc537d6117750"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.40.0/clotr_0.40.0_linux_arm64.tar.gz"
      sha256 "d4e99be1b2a1895107e85ae567bb0a73fe57c3936ec0176413c332bef4e2dc04"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.40.0/clotr_0.40.0_linux_amd64.tar.gz"
      sha256 "5b46d021486829b46899684ca9317b5d778b56da442a4c0d35c952375dd52305"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
