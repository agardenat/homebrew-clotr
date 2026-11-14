class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.70.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "719b4efb9e508687c550f9ef67bd5586abe26c075b0f88a6f1dd3e98abe8a610"
    sha256 cellar: :any_skip_relocation, ventura:       "288244105900d5ccbc65fd1e9a066709ccc4e65801c7e7afce6275df2318293e"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "dbf73d8b7900cd2302e0fcea5c6ef2294ab36ebac4d5395b72c9fb7cd7d20d75"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c95253c6274eae60e97a052311c371187ad325d541b2ae61d15705326f8f1f8e"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.2/clotr_0.70.2_darwin_arm64.tar.gz"
      sha256 "3c09ee9440447e7c6728b9a1bcd123a5af6cea60f671716eeb697b8a8f118bd7"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.2/clotr_0.70.2_darwin_amd64.tar.gz"
      sha256 "fb7a9efd1aa280f6e7dc6e20410c77329110493d69de680ba15e182e919045f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.2/clotr_0.70.2_linux_arm64.tar.gz"
      sha256 "6194797857b04a2379a195ebce816f6b234bba21b96140bab06176a855a5ba03"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.70.2/clotr_0.70.2_linux_amd64.tar.gz"
      sha256 "f24168df862d09544443ad5f474e30480b92bcd1f44b1f0cce23b11f039be9de"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
