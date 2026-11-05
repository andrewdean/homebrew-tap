# Formula/surveyor.rb of the andrewdean/homebrew-tap repository:
#   brew install andrewdean/tap/surveyor
# Rendered by packaging/homebrew/render-formula.sh in
# https://github.com/andrewdean/surveyor from this template; edit the template, not the tap.
class Surveyor < Formula
  desc "Code intelligence graph with provenance, from the command line or over MCP"
  homepage "https://github.com/andrewdean/surveyor"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/andrewdean/surveyor/releases/download/v0.1.0/surveyor-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a28c5126666d640ebcf2daed740c457b87531a069823cb3fcbc71e82f68eac8"
    end
    on_intel do
      url "https://github.com/andrewdean/surveyor/releases/download/v0.1.0/surveyor-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "1e59241710176857c6b77daf81369fe8389458dc72b85c7e2dde1a1992a2d56c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrewdean/surveyor/releases/download/v0.1.0/surveyor-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d93bc1fe10737e73f9ebe81ffe4cbf34508f8a350bed60636b23f3aa1f037dc1"
    end
  end

  def install
    bin.install "surveyor"
  end

  test do
    assert_match "surveyor #{version}", shell_output("#{bin}/surveyor --version")
  end
end
