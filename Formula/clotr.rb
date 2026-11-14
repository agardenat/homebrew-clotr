class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.69.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8cacb9eb544f23681598c429854d29208d86b9b9d5fecdd03ca8e693873b9391"
    sha256 cellar: :any_skip_relocation, ventura:       "6d57995e370d9db2b0aaff35f74a8e7af28c57be7b6c97db85d8ad95fe29efff"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "437651efb7d6542ec0fc7754c3ace50a2adc24091ae6c5d162e0ca6f924f4adf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6f21e7f27525339e089f114a4e4ed35a147473b0ddb9397fe2578ed006f6004d"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.0/clotr_0.69.0_darwin_arm64.tar.gz"
      sha256 "138cf3dc914500d365271d165e8d7a5e01e9e8be231344518f05f49f97a3d9c2"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.0/clotr_0.69.0_darwin_amd64.tar.gz"
      sha256 "726f66bbebbddf6d38d3241ad10e61fea6a6c4a1106c7a50267da08874ebb205"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.0/clotr_0.69.0_linux_arm64.tar.gz"
      sha256 "fadd134c8adf437be9f26a9a3cfad6bb22dfd53149650006d35d5008290b5e75"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.69.0/clotr_0.69.0_linux_amd64.tar.gz"
      sha256 "985b01fe0cd9cb85aa8a8ffc8001006c506c3832231d7630a964a8709a7e0058"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
