class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.62.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d2eaaa5d6b82095fe224f40c09351e7a4595da87b5b497b8a6ec2dcaa2655450"
    sha256 cellar: :any_skip_relocation, ventura:       "85ff614b4b0c18ab82295f0faea13afd5beee4a2925e4b4101933a26dd729baf"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "1f940037e1155e45e25f929b38f117a843304a90fe41a493aca7f3b4a9ea056e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1d6e77134c1d8f4ced82e63412d575c67b905bde75c5f24feb771098e1f06765"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.62.0/clotr_0.62.0_darwin_arm64.tar.gz"
      sha256 "d26f888906e40fa2303857f0adbef7e76b345e824c38e832ccfe870a50da8d97"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.62.0/clotr_0.62.0_darwin_amd64.tar.gz"
      sha256 "8156054b0dc8e4265689114e8f8f3954248280ecde8de671cb23aa16c08205b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.62.0/clotr_0.62.0_linux_arm64.tar.gz"
      sha256 "17b3b8d7b80ff65b4157f11760f0ff9704eaf84658240d7ba5197e53db607b63"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.62.0/clotr_0.62.0_linux_amd64.tar.gz"
      sha256 "0706dd838f539b95e8eecc46dab073bccfdc031d49eea0e759a4e2f81aceead7"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
