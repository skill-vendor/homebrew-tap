class Skv < Formula
  desc "Repo-local, deterministic dependency management for agent skills"
  homepage "https://github.com/skill-vendor/skv"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-darwin-arm64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "skv-v#{version}-darwin-arm64" => "skv"
      end
    end

    on_intel do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-darwin-amd64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "skv-v#{version}-darwin-amd64" => "skv"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-linux-arm64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "skv-v#{version}-linux-arm64" => "skv"
      end
    end

    on_intel do
      url "https://github.com/skill-vendor/skv/releases/download/v#{version}/skv-v#{version}-linux-amd64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "skv-v#{version}-linux-amd64" => "skv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skv version")
  end
end
