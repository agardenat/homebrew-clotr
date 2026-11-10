class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.60.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "036041103e1770149633b2cca2096abfbf23ba080cd5d89675f4baf73c787f88"
    sha256 cellar: :any_skip_relocation, ventura:       "75c3f6b79d0d847397a8b9be8b0f74e33cd3e847f3f5d2f8a770c1d90acca8c4"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "dbe4c424912d4ea0c90eb5e9a59b78f02d4110e7b9d82fd32b9e8411e91bd647"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8e57fe8cecbe310640f66dbb348339c3ada90e3fc8175145690fa57fc1258680"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.60.0/clotr_0.60.0_darwin_arm64.tar.gz"
      sha256 "9caac07c903be684d9a578e89e18cf398f9bff5def0a65ce915bd69e62c4edaf"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.60.0/clotr_0.60.0_darwin_amd64.tar.gz"
      sha256 "61593bd3a7af079fab46f73b7dfffdc4ea2bcda5eabcce2a1ae18fd50bcd65e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.60.0/clotr_0.60.0_linux_arm64.tar.gz"
      sha256 "575213fe9f003afe1187f7a6f4404a90f1280e03f50954560ce53fedfb204659"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.60.0/clotr_0.60.0_linux_amd64.tar.gz"
      sha256 "114735d8e845638720350f28b4de5286eb19e5b651229359e8bdc45c057c5a11"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
