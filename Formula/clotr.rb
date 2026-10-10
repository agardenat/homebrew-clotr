class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_darwin_arm64.tar.gz"
      sha256 "568abd3ace34e3f8fd8f6579a710cb7e8d9792ef52a7c7574f7a7f6afbb89432"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_darwin_amd64.tar.gz"
      sha256 "3daab1fd550628160681ed0cfe44dda87fdc23e4d5ad7ab1179ae91003b3f1ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_linux_arm64.tar.gz"
      sha256 "cc8fae805f2201bf6ac2f9ae1a39654e9833363f3e66dd8996990fabb5a42857"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.1.0/clotr_0.1.0_linux_amd64.tar.gz"
      sha256 "5f3c28e18f49741768396c041e26a16e37849e5304f78e19ae439cd6bcb6857b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
