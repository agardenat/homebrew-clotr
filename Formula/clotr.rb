class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.68.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f542950821f13616b8ff0e62c2d39117951d395e69c34688f3ace507b263c862"
    sha256 cellar: :any_skip_relocation, ventura:       "6d782804f8f00125984f505fad9569487431e076fe0c0e5efa74917840295629"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "9aadc0c97ba587f2f1bc5f1e3f8400b0d145dc944d61a994eea30022f973e8ba"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e6113a3c7329162141e1a6b19ab3e7ffde4f16a6eed73a895e717f74edfe668e"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.1/clotr_0.68.1_darwin_arm64.tar.gz"
      sha256 "149301012a4b93b3c3eb1ba423e0786529f5af3cc0cb147cd18c89997b53948a"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.1/clotr_0.68.1_darwin_amd64.tar.gz"
      sha256 "1a66a55e8d71ab28b42bc119cd74f02b1f7e778db752ab76108ab96bc491fba8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.1/clotr_0.68.1_linux_arm64.tar.gz"
      sha256 "8eba85ac9e80f6341b77ced9cf36726c0df56e230d440facab2b111a9e48a886"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.68.1/clotr_0.68.1_linux_amd64.tar.gz"
      sha256 "f2834e026d6f84f2bb3f7c9c5aac6613abfbd806a543639cd80c38a19f864fec"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
