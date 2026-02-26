class Logicoal < Formula
  desc "AI-powered CLI coding assistant from Coals.ai"
  homepage "https://coals.ai"
  license "MIT"
  version "2.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-arm64.tar.gz"
      sha256 "d2ed0a03c52a673d135eca850e027ce87cb68ed6bd555999c8846b4dbb6fd712"

      def install
        bin.install "logicoal-macos-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-macos-x64.tar.gz"
      sha256 "e8b958ed55a51cb0c6b3da07990eff5dad891a4169e0cf97c1cd4345f3ddd20a"

      def install
        bin.install "logicoal-macos-x64" => "logicoal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-arm64.tar.gz"
      sha256 "89122fb4ff1876560dc57f83edc3f6dbeb172ff832b07cf22ec1f12049459ec0"

      def install
        bin.install "logicoal-linux-arm64" => "logicoal"
      end
    else
      url "https://coals.ai/downloads/logicoal/logicoal-#{version}-linux-x64.tar.gz"
      sha256 "a549b0b8856069e4cc971239d61b796b435dcb948172f0e16818aa665b0ecaf4"

      def install
        bin.install "logicoal-linux-x64" => "logicoal"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logicoal --version")
  end
end
