class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.51.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "13b1ec70ec26a0d03b4e9f91b76ff2eeeb8a4927d63743dc5d4e0c1adeed5c46"
    sha256 cellar: :any_skip_relocation, ventura:       "6c93b5c63dea73d3c276df41a619b9aea418409ba548f800ea122dc89e44a128"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "0a4b6c19971a1b44724271ed147cbda13ad4c1889c41468d32c6b206d1b106f8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ecad0a15e2b166a16592eb2f9fa1ee85cf24188d0fdc2aee6f85f278f99bb654"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.51.0/clotr_0.51.0_darwin_arm64.tar.gz"
      sha256 "b7e5dd693568ed5517c3cf92d5d31e9badcf9421f485c7e6d3baeb28a4330e8b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.51.0/clotr_0.51.0_darwin_amd64.tar.gz"
      sha256 "744db117b30faa4b05edfe26a1963e541ea0c8ab72e468f62c6a399cec00023f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.51.0/clotr_0.51.0_linux_arm64.tar.gz"
      sha256 "ffbfec6b67121696ad9377df203f7d42c476fe425546b1c9df13108e5c91ee9d"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.51.0/clotr_0.51.0_linux_amd64.tar.gz"
      sha256 "da323b67fa1c8cb80a1745def0c1a37425db9425a845dd491be86654be1aae0a"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
