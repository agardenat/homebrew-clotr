class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.9.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7a6b8c1b32e796bd128e00a1642d5914f2cc3594bb8603945f622c2742e92188"
    sha256 cellar: :any_skip_relocation, ventura:       "31d3ce8989eec1be5bc095b7832d4fe7e53cbef07ad21025c3a3fd9a5088da65"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "348b29d3103ca42126d52ab855ac8f73111328d1cf7620d697a99e61e4e7df47"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "06866f1cec132cfa47fb150ee13f95d59907f82306e42df2872af5e3c745aa6b"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.1/clotr_0.9.1_darwin_arm64.tar.gz"
      sha256 "88735c050165c5ba39e0d1d924a5d01406701f98c28b26e670d73fe144410712"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.1/clotr_0.9.1_darwin_amd64.tar.gz"
      sha256 "6193f10c03ee4ae0564da2ae1b5111cd22ac522cf6ab0b0d78f065929d1f7665"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.1/clotr_0.9.1_linux_arm64.tar.gz"
      sha256 "c7205dc54dc3eec892329bdb6391d6b94afbc98a9b54bbb40449c68dcaa2f3ea"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.1/clotr_0.9.1_linux_amd64.tar.gz"
      sha256 "8d08f10942979e5bf8a1ea1187aee6713d16986daf526e3b232228bfa50c9531"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
