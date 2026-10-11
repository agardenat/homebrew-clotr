class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.1/clotr_0.5.1_darwin_arm64.tar.gz"
      sha256 "8203c070cca31a652c2f10959f95b6f3afa48c46adad1be9e45eae0515c83c27"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.1/clotr_0.5.1_darwin_amd64.tar.gz"
      sha256 "47c18389fc6550e563dca485aa3bdd6e96a448fc56216298f85b88aa40dcfe28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.1/clotr_0.5.1_linux_arm64.tar.gz"
      sha256 "47da44b081084c3c08a6de770237bca84a04efbbe34c70d04a05a8da462e782d"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.5.1/clotr_0.5.1_linux_amd64.tar.gz"
      sha256 "29319101417268ebf357bc4711666c751d81b40625d91800dac4e23a1f8f41c7"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
