class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.82.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "05396053645c65c1b73e82e88478bf76d89caa751447e4461d40c9c46377b9e8"
    sha256 cellar: :any_skip_relocation, ventura:       "c0d105cf1ddb0613d07d08ac4603fe499ebb384112936db7d01a79fde7e6d24f"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "3f270ffb803e65e4387650d1812a4820befc916faeb215d43c460028797d662a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4d00b6f5fe8ed619257ac54aab85a5cad41214ee7b96fb50de5675fc96b608f9"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.1/clotr_0.82.1_darwin_arm64.tar.gz"
      sha256 "c813f80146cd3c1f426a24ff63b3a07b5453d135665f2527497324a08b7647cd"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.1/clotr_0.82.1_darwin_amd64.tar.gz"
      sha256 "b5190dff11bc1a80b3a7c0c91bc0599ae5ad9d53d44d555c2967c3f24f3ef736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.1/clotr_0.82.1_linux_arm64.tar.gz"
      sha256 "f3204047ecbc7c7e3170dd9420170966587570beb22e71c3336d22bd44668df8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.1/clotr_0.82.1_linux_amd64.tar.gz"
      sha256 "cab2c78a490ef66a042dc96d9ffef261822345381db27eb366d4e379fdc60a64"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
