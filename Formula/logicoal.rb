class Logicoal < Formula
  desc "AI-powered CLI coding assistant from Coals.ai"
  homepage "https://coals.ai"
  license "MIT"
  version "2.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-arm64.tar.gz"
      sha256 "a9fe5fe6a9274074ac527ff9a94bff148f11022e5c547dd89ffb940368505724"

      def install
        bin.install "logicoal-macos-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-x64.tar.gz"
      sha256 "7aab80067755036e751ddea8c7784e8e88baa560ff6e45346166bb8d3619e2a4"

      def install
        bin.install "logicoal-macos-x64" => "logicoal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-arm64.tar.gz"
      sha256 "37a085e48dbf740e1916f29c9b4a61ec9c2260045aa008f007087f3b11e09903"

      def install
        bin.install "logicoal-linux-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-x64.tar.gz"
      sha256 "864a8eafb4bc1ed6e3b08be351d0d245f749c8a9544e5531a4ba59628acecd16"

      def install
        bin.install "logicoal-linux-x64" => "logicoal"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logicoal --version")
  end
end
