class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.15.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c3c795c8c5cc6e97c71cc95c9a3261b4334897bedb54ff5228b8e1ad851a2a3a"
    sha256 cellar: :any_skip_relocation, ventura:       "df71d79a1ac06ae0e82271eee7b9ab9d2652ad1b1c0354ad4ff967479e336799"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "bd9fd6579ac0700be3a085a7f4e9bc8bf9cb84f5938c91e372a12776ddc4addf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e87f836ea301fd5c4968d6c71f877ab4b3582020a2c0e785f7d687fad7a0e8aa"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.0/clotr_0.15.0_darwin_arm64.tar.gz"
      sha256 "948208f3678fe6cf718d685aa938538d6076e5b60358ccea19aeb09501fe530b"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.0/clotr_0.15.0_darwin_amd64.tar.gz"
      sha256 "ce68d4fa96f83ae00f08450318bf4d574286680cf4d4dec8cc477cc7304f93bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.0/clotr_0.15.0_linux_arm64.tar.gz"
      sha256 "e857590074cbabf0ab88ebaf383a73e3dadf09af416e20275d1c8dfba6528f87"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.15.0/clotr_0.15.0_linux_amd64.tar.gz"
      sha256 "d5e49ba2eadaddc98cb950e8e88f467edda8efa6f078fcf1325ad4ec4101887f"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
