class Clotr < Formula
  desc "Read-only multi-model agent CLI for infrastructure diagnostics"
  homepage "https://github.com/agardenat/clotr"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/agardenat/clotr/releases/download/v0.67.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "13580af3bdd450f6eba6ed8d2d01576db346062fb61230832e418e7e7d5ef918"
    sha256 cellar: :any_skip_relocation, ventura:       "291bdb36565db243452d916ceca62d2b5245690aa36d02aa623786bd23eb1e36"
    sha256 cellar: :any_skip_relocation, arm64_linux:  "471e440cf4998a05171d032080ca3a34a58fbcd6e827ea69a11f0c7b6126e55b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f1bc7ed2f766ddc3e951f5a152c5ab6d980dc3b3bb94ba789ec82cb112960e56"
  end

  on_macos do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.67.0/clotr_0.67.0_darwin_arm64.tar.gz"
      sha256 "63b14e8dc4cd9e26a91d1e06a938390e097fac733dbf8dca492d669ac4bfe7dd"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.67.0/clotr_0.67.0_darwin_amd64.tar.gz"
      sha256 "4c1263b497ea77d9b513fd61e054bf8d460699fb33bc4df63255f2406c7fafed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agardenat/clotr/releases/download/v0.67.0/clotr_0.67.0_linux_arm64.tar.gz"
      sha256 "6da7c058c9985d614f80056cbfa3ae5b2c7593d4beddf6b8b21006b635f71284"
    end
    on_intel do
      url "https://github.com/agardenat/clotr/releases/download/v0.67.0/clotr_0.67.0_linux_amd64.tar.gz"
      sha256 "41b0c77ebbe6dac6570ea34e208acdc7f9f13ca62b79fd94b2d2aab6ba2b2339"
    end
  end

  def install
    bin.install "clotr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clotr version")
  end
end
