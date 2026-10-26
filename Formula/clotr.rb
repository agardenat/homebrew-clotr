class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.38.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "abca3674a3c93bf2a8beb9aa01a09c0bb81e29d7fe37c73a723f6e27264b10ac"
    sha256 cellar: :any_skip_relocation, ventura:       "e9b226976fc3c120c556c0079d78af8ef6312a954087900b593f786855db08a4"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "825c131792558b65313bbe8a706cfe0f1bc6bdef7f8d1cffebdc9e121d564e8b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "67f514ddc2ceab45c762e4a4a9076982a7212e053b9ce86697820a48ee7b5c84"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.38.0/clotr_0.38.0_darwin_arm64.tar.gz"
      sha256 "72b1f0c1fa786ee6373e8fa714e60343819b0c034d9a3ebb20336a18092e95bf"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.38.0/clotr_0.38.0_darwin_amd64.tar.gz"
      sha256 "cc50113a566782c60cfd0f79478832ec08917e064bb2b73b821cb7f8a734acee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.38.0/clotr_0.38.0_linux_arm64.tar.gz"
      sha256 "c6e0e1a8f4c67a94b8f8e687cafd2a1be074a4d1f210bd7278d3f62fd47436e6"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.38.0/clotr_0.38.0_linux_amd64.tar.gz"
      sha256 "0033502fa7aa08302e7b79c952154b1349756683632e63d1fed6497f9699c8e4"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
