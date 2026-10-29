class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.48.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "5af8a31355dc6130b9c8850469d8f3235c5df4e6225cae6dbd3eb010b79d4b51"
    sha256 cellar: :any_skip_relocation, ventura:       "f0aad347dfdf72b9e759178091dbd0013d8b1ce18647755ad61a72c2fd684880"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "0d985011cc5b04fdb6a01556e9ca081d223888449bc0a988bc9a171cea01f76f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c962e4ade45451d703527a8277fd796a1889757b48aa4b10698434ff8b0157db"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.48.0/clotr_0.48.0_darwin_arm64.tar.gz"
      sha256 "c5a4a1697336d27a8b09c3bfb047f924f3db9910079cb12699038d6ddef48e98"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.48.0/clotr_0.48.0_darwin_amd64.tar.gz"
      sha256 "ebf6705227489564c8a21523dc59435dfd974d501a869ba5cf7d9b7bce23de41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.48.0/clotr_0.48.0_linux_arm64.tar.gz"
      sha256 "0b6db6aa31eb356d537441fda5241deeef9453b9745afe83eccc9c85612a5ccb"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.48.0/clotr_0.48.0_linux_amd64.tar.gz"
      sha256 "0bcc95c5e609a524a254283c2e0dccc76d827ae3a6f5704ac62be040520dd387"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
