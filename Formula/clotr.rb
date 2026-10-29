class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.46.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3d2e26dbe629e338c98799715f6afb3219a30a47db6642097c445e36f9629703"
    sha256 cellar: :any_skip_relocation, ventura:       "f8d42c0794e636ac803c5df94eafc0fad11b8ff61db560ec8e12a4496d621c87"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "a07af9c87ac5194ea1c8a241bd607bfea2cedbbc52dc13cc9cae2cf303a58cd4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dec0cc9f2e0e720474e7e6c5b7acda1aff8eb4d951caeddfd770c3647cd17e79"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.1/clotr_0.46.1_darwin_arm64.tar.gz"
      sha256 "ffe7f697c51244e7df5900692a11d001c44808ba9c9cc666488a83e19c06c808"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.1/clotr_0.46.1_darwin_amd64.tar.gz"
      sha256 "de2244a2175df583cf1b3f5da27f89b5d03e69bbbcea9b0d10852b5d8a6a0507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.1/clotr_0.46.1_linux_arm64.tar.gz"
      sha256 "e7965b54b909365effde3ee235d695e535c436d2dfbf107de73612a772e4d4a1"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.46.1/clotr_0.46.1_linux_amd64.tar.gz"
      sha256 "ccc892cd07565afb11fc5ea4421e280f2e89c7b95355c79d967c12c303289b5f"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
