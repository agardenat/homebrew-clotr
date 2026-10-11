class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.7.0/clotr_0.7.0_darwin_arm64.tar.gz"
      sha256 "27da7933cfd86a383dc0c506f0ee2511c48a0997f71b7578a53c7f9b8b97d115"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.7.0/clotr_0.7.0_darwin_amd64.tar.gz"
      sha256 "661296634c0ee596a2e756edbde429626af7294265e3226078332338bba15c32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.7.0/clotr_0.7.0_linux_arm64.tar.gz"
      sha256 "de005e1811c6641997ee1ad4cc54e0cb0843cc36163d6e71986c67855c3c73e9"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.7.0/clotr_0.7.0_linux_amd64.tar.gz"
      sha256 "bd42dd600433882431e85e4c34d56de49582582d00b6d42599d5a61f4de8665e"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
