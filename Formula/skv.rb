class Skv < Formula
  desc "Repo-local, deterministic dependency management for agent skills"
  homepage "https://github.com/skill-vendor/skv"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-darwin-arm64"
      sha256 "f6e281ccec0d4720117a900852ee7eb25db81d819e985b90700264f4a2168086"

      def install
        bin.install "skv-v#{version}-darwin-arm64" => "skv"
      end
    end

    on_intel do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-darwin-amd64"
      sha256 "e7aa01762f9ccad822696fc297d86afc5e397062067f990e7034e7d83f7007e9"

      def install
        bin.install "skv-v#{version}-darwin-amd64" => "skv"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-linux-arm64"
      sha256 "03eeb87640747b9e64b7fb0a61779b7b44ae42ec413d047dd56187ac6816f8a4"

      def install
        bin.install "skv-v#{version}-linux-arm64" => "skv"
      end
    end

    on_intel do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-linux-amd64"
      sha256 "bcd7d0df061888c9520b11fad96e86416944bb65232b0ae43db4c7d739554c07"

      def install
        bin.install "skv-v#{version}-linux-amd64" => "skv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skv version")
  end
end
