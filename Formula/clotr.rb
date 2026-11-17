class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.74.3"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f6aa15482513f0c8f86d66f721181b0c58d4a3de8297ecdbf69b84b304857f36"
    sha256 cellar: :any_skip_relocation, ventura:       "10c1474ab367cd56df14d8479f7ffbd139e2dde5086e8c921549630bf19ad518"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "0d0414e2d3fd78730673766c81c15bfd5b194cf852886529b1077ce4b718a228"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7f9af98baf3c0de9856299fc32c764c9ba890c49e2b60dc1fd446d1f95a1a4d1"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.3/clotr_0.74.3_darwin_arm64.tar.gz"
      sha256 "e3fdb3d46149e5ec7104915338abd5b46399150b9fd943df5de052247db2cf5f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.3/clotr_0.74.3_darwin_amd64.tar.gz"
      sha256 "b3482bb347adf82c04b728a102c966a34fab9aa6040c633c36ccef88d2e1afef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.3/clotr_0.74.3_linux_arm64.tar.gz"
      sha256 "ba58ed99e084644e9de36177564a6eddf8f038b4f2c3402596a1253693cf2b32"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.3/clotr_0.74.3_linux_amd64.tar.gz"
      sha256 "5a55a3f9b5bd7e5783879215d5bb7d5f0c64f0ea01d8ec617c041e4cc61ab075"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
