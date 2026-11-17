class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.74.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "bd8fb34dd5ebb144daf7c92f11a76c7215fa93a14d10765a520f4582028faa14"
    sha256 cellar: :any_skip_relocation, ventura:       "ff433dda3bf27995e22300bb24e3dd4afd0af60c5274d37937ed9b9ba34e1546"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "e5621b3b7c36da6474ce7996a0d7ef3d21f020696b096a6d5d7b2ca65b0fe63a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "60af45d06e65b8c88b6974e763418ebba9826afde9852f7f428d6bdbb6c6a5f5"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.2/clotr_0.74.2_darwin_arm64.tar.gz"
      sha256 "a52026cc624b5357890177aebf9af4439be2a08e90c7e91e596ba8840d1ee137"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.2/clotr_0.74.2_darwin_amd64.tar.gz"
      sha256 "2b1968aa6133c8dc64b524aade7fd25e62e8d21f69648b6cf2b7e905d356e9a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.2/clotr_0.74.2_linux_arm64.tar.gz"
      sha256 "8bc5a6efbab66087e4176099b6aa251a026e500fca7b65da562a76670def10c0"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.74.2/clotr_0.74.2_linux_amd64.tar.gz"
      sha256 "b5d6eecc8f092f5901b0633ecdf4c183a2ef1f7fbc55819145c310be5d71fc85"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
