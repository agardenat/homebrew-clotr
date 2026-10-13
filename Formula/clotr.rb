class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.12.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e131bdfa73db04779ded01d405b976fc1690a6570a6a4a99718a8f69ce8462e3"
    sha256 cellar: :any_skip_relocation, ventura:       "94ed01508d25a2dd35040068ce82f139b42d18381e8c99fc1c5f02feaec42529"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "7df505ea288e59496bab02fd4a3cc566227c7f783b8698ba2ef1ef9b014eb98f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "04638d7308d4c5020669eaef16b97ade79723e2dc598e00846f88ab1d83d6407"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.12.0/clotr_0.12.0_darwin_arm64.tar.gz"
      sha256 "e68eed453ce59ee8b05562158926d73ef6e13493f2da77d3de34d366d219b7a3"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.12.0/clotr_0.12.0_darwin_amd64.tar.gz"
      sha256 "30e21c0828e75c3de320e330b5f62f18772870eb048caf5633367622453cacd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.12.0/clotr_0.12.0_linux_arm64.tar.gz"
      sha256 "563ad04b6c7f6f97b8939f2b8466661cca24fa0091f48b938f470015985de86c"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.12.0/clotr_0.12.0_linux_amd64.tar.gz"
      sha256 "587eee3db9ed1116ca98eed68b4419cbc33ffa165983d8a09e15598aa4043151"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
