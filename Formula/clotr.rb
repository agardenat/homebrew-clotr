class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.81.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "242359410394c7177865bc4ba8db1514f2178041b36759409b2bfa5ca6037114"
    sha256 cellar: :any_skip_relocation, ventura:       "2fac317dd127064c6f7a910db651c676fe66d9277af983316a41cff4c5e9ac3e"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "dfdeb734b001f4cd17fedc993f110ba1ffe05933cac0b7aafea77b88790a05d8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "114b63ba13392a000412ce217b71f16b3f3559aa37e80f949230e783cbc3ab25"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.1/clotr_0.81.1_darwin_arm64.tar.gz"
      sha256 "284ed3ff644d4810a891693ad91f30e1d5d1ddce86c5bceb76371351a20bab8e"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.1/clotr_0.81.1_darwin_amd64.tar.gz"
      sha256 "6c2c6b213f5474d4ffc87e809d7b8f9383e4c0aa8a51fabc91b9847d00a69a64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.1/clotr_0.81.1_linux_arm64.tar.gz"
      sha256 "fb7d80d55d73655e319ebff507bb4f6566ec80c2db41fd999de6d1992866ba71"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.81.1/clotr_0.81.1_linux_amd64.tar.gz"
      sha256 "240e4053b953551e215ed5c2ab5bcf00267d3400097c12799a5bffa107fb035d"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
