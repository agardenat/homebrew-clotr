class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.0/clotr_0.5.0_darwin_arm64.tar.gz"
      sha256 "9fcf2008d7c6b7c6e87f46a1af2139eb15d18d4a0c1bde25cbfe4c5bfb3aae9f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.0/clotr_0.5.0_darwin_amd64.tar.gz"
      sha256 "49adecb0ad9da62ac2cb9d2503ab9c7d14831389ebfe96824926f645f8ca0f23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.0/clotr_0.5.0_linux_arm64.tar.gz"
      sha256 "c67e77e1d28bea8ab333e5409df27315a506c59fba9506dfc87f62d7b9a0ae79"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.0/clotr_0.5.0_linux_amd64.tar.gz"
      sha256 "b8f572f0a6c091b4763ca584bb03e0d6848397ba594ca7c02960b55f02c0f0d6"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
