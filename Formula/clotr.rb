class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.0/clotr_0.9.0_darwin_arm64.tar.gz"
      sha256 "e444a610760f6c58bbfa1e418ad0e9fe434fb6cfd36c0d698b2b1549d933c992"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.0/clotr_0.9.0_darwin_amd64.tar.gz"
      sha256 "ac2f82196dd524302c8dd6207498460d905fad64ba9e764f1432a6a13f3ce1f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.0/clotr_0.9.0_linux_arm64.tar.gz"
      sha256 "5572d461e4a83971a23b16f9c9d38d1fc4cb57380b7abec6ae1db70a79b6d784"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.9.0/clotr_0.9.0_linux_amd64.tar.gz"
      sha256 "f715893f8f23cbf9bb3449e7d39d94f4bfdf3b264701eda430a86288fbbd0adc"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
