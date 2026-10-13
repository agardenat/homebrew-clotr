class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.13.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "1be4be947a9f6d846497d05b3b60ae641d2f9132d8fb3aad34fb12adf2b484af"
    sha256 cellar: :any_skip_relocation, ventura:       "9253f27994af9107d7de4bd01e7d5abd31b4bfde693de14ac69cb0e44c61060f"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "d5f77575f844c788d264f365790bb55c0a628c26a8fd9562e7ab88df2b5e60ab"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "522ba2ff2b85265aca9e36a3c8a2f30b30f37fe8f1743671bbd735e2243bc4e2"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.13.0/clotr_0.13.0_darwin_arm64.tar.gz"
      sha256 "127137ee93a0946294239b7c1fd13332f4164d72ce983ec5fd1f5f3d3891f70a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.13.0/clotr_0.13.0_darwin_amd64.tar.gz"
      sha256 "04a00dced9385f5d11df5b82a436990f88fdcee8cfb89864febe89217277282a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.13.0/clotr_0.13.0_linux_arm64.tar.gz"
      sha256 "ba9a3d3bfcc9b6b9da505ce827540b7fcf958b6d4b62da1344b7fecddf18a4ca"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.13.0/clotr_0.13.0_linux_amd64.tar.gz"
      sha256 "738ed82a1f3839ec020abb9c9289ad4345d6d0de34eb74df8dc5b0ff5333ddce"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
