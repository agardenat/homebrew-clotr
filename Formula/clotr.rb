class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.6.0/clotr_0.6.0_darwin_arm64.tar.gz"
      sha256 "740a08b8468621d60c71d651684c7ead4602846c597ac0e4cb41e1e10f45172a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.6.0/clotr_0.6.0_darwin_amd64.tar.gz"
      sha256 "c8bcb05b5872ac3396731dcabf6aa9c79dd2659cf2e41a2364c6916eaad3ead5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.6.0/clotr_0.6.0_linux_arm64.tar.gz"
      sha256 "b1c63cd5645639397526e6c3a2b244ea4bb47f3ce7b25d9b275ec6935c1fc2a2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.6.0/clotr_0.6.0_linux_amd64.tar.gz"
      sha256 "9eae791224eb727d04eb70e6232cebc56e99ccef12c9d32aa15068f9a8b31a19"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
