class Logicoal < Formula
  desc "AI-powered CLI coding assistant from Coals.ai"
  homepage "https://coals.ai"
  license "MIT"
  version "2.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-arm64.tar.gz"
      sha256 "6546330244e204b48b095a9e2e600fd676ced8da9ec6b688aac5b71839605b9c"

      def install
        bin.install "logicoal-macos-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-x64.tar.gz"
      sha256 "3fbd7194e4a6dd65117dfdc10df272edaa37801c5c606bde2b920a548a044039"

      def install
        bin.install "logicoal-macos-x64" => "logicoal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-arm64.tar.gz"
      sha256 "2aad619c6c5d9b0a2b9618f4c819c3f0d95978d344a001e4649ef950e802a37f"

      def install
        bin.install "logicoal-linux-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-x64.tar.gz"
      sha256 "41782787e3f13f71009051b6a890c1b2980bab809727e29ca48f91c47484d3ae"

      def install
        bin.install "logicoal-linux-x64" => "logicoal"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logicoal --version")
  end
end
