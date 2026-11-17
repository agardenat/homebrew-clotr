class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.77.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "ce4a1d96862a4d3b727579bff853356333b5a7562f36b101edf0ee1560be5a43"
    sha256 cellar: :any_skip_relocation, ventura:       "624f0993eea8a53803e215d13e2d465a173f61bbf25c8f5e4f30e613eb05ac91"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "4a8ec4c30088db64cc8d31a63fe3a2854f1be8a0f2d9d5014fbf61af7eaab00e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5ea26af8d438e228f3ba0c76e77e65cd70b8590402b7b9587e307a510f32bc15"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.1/clotr_0.77.1_darwin_arm64.tar.gz"
      sha256 "a8433e68761f6a79b27647d243e0d9170ab752228e2b6d8d72c37859bc9d9132"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.1/clotr_0.77.1_darwin_amd64.tar.gz"
      sha256 "4165578fbf006d9ecfea27ff85f32ba8b5ccfdb3dbf5b8657d46f52a354e1320"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.1/clotr_0.77.1_linux_arm64.tar.gz"
      sha256 "8c366cefc7a4d749f472586053bfd3f2c5f80545fc4cdd01c31b6d5fbfa2c347"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.77.1/clotr_0.77.1_linux_amd64.tar.gz"
      sha256 "5d2eacf1617a85e2592bbeccd2bccc270fface3851ea2cef55681b9f6014a754"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
