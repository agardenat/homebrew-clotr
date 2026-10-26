class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.36.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "af154f680bc63c48bc9a9cef7eccb70615497b9dedbbe3cf7153054d2a1c184d"
    sha256 cellar: :any_skip_relocation, ventura:       "5232504a786c1e577b600b6b1257754d2429a25e584d611207c490f9e24fe498"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "b1b176f9b19500652ec044c68b5ab03c89ad35a3fa361995b7595ffbf0396e66"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a9332f7e2609b1e2ec6f78e29e0b55186e556fecb1544d75e321949f2ca5b92b"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.36.0/clotr_0.36.0_darwin_arm64.tar.gz"
      sha256 "67f4950fe1e13a740a0f0d9169b6d36ec3474d134a953e4b0a5d380f4f84de8f"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.36.0/clotr_0.36.0_darwin_amd64.tar.gz"
      sha256 "d74aad0403be9b5e0007d728738fa829af89b93374388d988586f1130ff8a8f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.36.0/clotr_0.36.0_linux_arm64.tar.gz"
      sha256 "07b76fc8d2d905eb555af0e306d9b87c1ee54e9fb74001cba54fb032a6bc12a0"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.36.0/clotr_0.36.0_linux_amd64.tar.gz"
      sha256 "be82136b1746a99dea6fe8d0618c7bfe4b9c874055153792de3c9af5f788c09b"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
