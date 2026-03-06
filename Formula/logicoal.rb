class Logicoal < Formula
  desc "AI-powered CLI coding assistant from Coals.ai"
  homepage "https://coals.ai"
  license "MIT"
  version "2.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-arm64.tar.gz"
      sha256 "09c5d6716b766b1ab72425ca6d294ce4f58d821c7f2841349bbb5c0de233aff8"

      def install
        bin.install "logicoal-macos-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-x64.tar.gz"
      sha256 "cdca4ead5d38bdb0755b5f4034c18de54510e2786f0f1f2a7a4c24acb1f3b690"

      def install
        bin.install "logicoal-macos-x64" => "logicoal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-arm64.tar.gz"
      sha256 "f7525c385e7664c16511b61b47763c9e36c3e824fd1d8240363e945d5b663706"

      def install
        bin.install "logicoal-linux-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-x64.tar.gz"
      sha256 "51f61556a530f9a76c7894fa93dcde73ee207122477937c7e2b4dca7ae8fe409"

      def install
        bin.install "logicoal-linux-x64" => "logicoal"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logicoal --version")
  end
end
