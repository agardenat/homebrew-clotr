class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.82.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b04853375ae123c31b564ea95436bd5ff794b375ad73d2f8cad54cd8b32978fa"
    sha256 cellar: :any_skip_relocation, ventura:       "b4b5d88f9b2cdd7b494742184f445d140211f213ca083500b509935cef2e7b0a"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "36eb3f7504dd9206449d0050c6324c37ccfbc61c8f129612d70f356f7b1372c3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f356e582f351d386c6aa82a714ae5f70eae5ccf333f5b0dc8f239ed4ae538587"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.0/clotr_0.82.0_darwin_arm64.tar.gz"
      sha256 "28d3da079a8ea734658e88263f218010740683f1ddce018094a215ab15dc21fb"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.0/clotr_0.82.0_darwin_amd64.tar.gz"
      sha256 "b88cf6fa89093a70f294c8cbc554b9dc979179050b9de30f16381dff08c6c250"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.0/clotr_0.82.0_linux_arm64.tar.gz"
      sha256 "8fd675a840922177bbbb99ba753c693666c31764943dc5ebe9bf2ba739862bb4"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.82.0/clotr_0.82.0_linux_amd64.tar.gz"
      sha256 "829b2933e737342812e5410549349e3749096ddaa480018f4803df71af80a2f2"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
