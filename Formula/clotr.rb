class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.3.0/clotr_0.3.0_darwin_arm64.tar.gz"
      sha256 "ca3c46cef3c8d610f5f00718044eafe0d3dd52b9587401413c80287dfd59b415"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.3.0/clotr_0.3.0_darwin_amd64.tar.gz"
      sha256 "d61f986baa1abc2d80e238bb4b78fe6c0f3f60ee8b58bb0ffb2858a4b18371dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.3.0/clotr_0.3.0_linux_arm64.tar.gz"
      sha256 "41508ff942b15a8a2f23f281bbfb7cee42d632e07b05ab77ae9645017897d7ea"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.3.0/clotr_0.3.0_linux_amd64.tar.gz"
      sha256 "d1b859be81f20ad52906a3b22708c9206b76a43b6fe018dbd79cadb830b08e94"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
