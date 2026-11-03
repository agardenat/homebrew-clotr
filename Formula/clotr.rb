class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.52.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "54638074fed4ac596710ebfe0e9d63c6f7b09ce313ab25194ef50cf5f0b8a4ca"
    sha256 cellar: :any_skip_relocation, ventura:       "3994093e7e630e7f20fbfb497a0462ddc0d3fa36edfdded80fa54817ee5079cb"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "2e2d8c3f306a1940c1739e25bd91e022339e5cf8ae5021e24fd44d48d11d6f7c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9725051a3be0da2babd6c62f62f87b93e3601fbefeb482ab093525348178e0f8"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.52.0/clotr_0.52.0_darwin_arm64.tar.gz"
      sha256 "3ea01cd2667c15a78d1674dadae1305f981fe5f697a80d1678baf13db04a35f8"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.52.0/clotr_0.52.0_darwin_amd64.tar.gz"
      sha256 "c803c9430a33a3e7fcd803c6b387ff8da5f6c9ea6cde58697ed3d667a34491aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.52.0/clotr_0.52.0_linux_arm64.tar.gz"
      sha256 "4ad0d1d72754cd08393bd6515e20240bf515342642b0cd3fe8fd542146b16721"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.52.0/clotr_0.52.0_linux_amd64.tar.gz"
      sha256 "5bb5117501cec5bc8888bfb355dd144fae35a8ef23dc2ba0d3d85ef420b8df54"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
