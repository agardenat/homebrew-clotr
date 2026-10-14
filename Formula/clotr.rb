class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.16.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "58e2042d9c0a70225eabad111173b3134b1572cace22e9bf8172d5fbde09ca64"
    sha256 cellar: :any_skip_relocation, ventura:       "86cdce2fbb6f1181097cf848c1cd72ca3da19ed8fc916b792ff6e42fea6b3e61"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "dc968d596befedb27f5dc2e2cec1535df7fa4eb1b53b5c73fcd563d231dd6896"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4ca2fab1e52435a1b0d8bcffa8b616ee778e37eb1f5fd1784a8825dc30fe071a"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.16.0/clotr_0.16.0_darwin_arm64.tar.gz"
      sha256 "d539272bdb4f9e7ecd2d3997464967cea8dc196c2bf28a569a27c169273d64f9"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.16.0/clotr_0.16.0_darwin_amd64.tar.gz"
      sha256 "8bee6c994e53e5736692af3cd7ca8919cf80ccafa62184b882489f86c4703060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.16.0/clotr_0.16.0_linux_arm64.tar.gz"
      sha256 "70cf5a951e65155cd5946aa1539a2bd88ddbd98fd2b4857ca1a3811cf3be17ad"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.16.0/clotr_0.16.0_linux_amd64.tar.gz"
      sha256 "8921e1106ec8349be786d3afa9d3c1243ffd9cae9a4a153293e15d8aa75a98dd"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
