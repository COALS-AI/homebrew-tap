class Logicoal < Formula
  desc "AI-powered CLI coding assistant from Coals.ai"
  homepage "https://coals.ai"
  license "MIT"
  version "2.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-arm64.tar.gz"
      sha256 "66cede03adf852a1c4dc24a294084b845c777cd1a3ec5300a74e8c589c401f90"

      def install
        bin.install "logicoal-macos-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-x64.tar.gz"
      sha256 "f411851c1a19a4382cba7cbab2ba6eaa4e6fac6e662d1801c0a9cf8f68258153"

      def install
        bin.install "logicoal-macos-x64" => "logicoal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-arm64.tar.gz"
      sha256 "9a63bd35661cc4fcb6d6aff9f71a483af662bb0d6ef674fbe43e19b57fc23e6f"

      def install
        bin.install "logicoal-linux-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-x64.tar.gz"
      sha256 "e642125b66a750b2738be0b9e4bb1117e900bb659bddb403a3d17729c157fead"

      def install
        bin.install "logicoal-linux-x64" => "logicoal"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logicoal --version")
  end
end
