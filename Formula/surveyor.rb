# Formula/surveyor.rb of the andrewdean/homebrew-tap repository:
#   brew install andrewdean/tap/surveyor
# Rendered by packaging/homebrew/render-formula.sh in
# https://github.com/andrewdean/surveyor from this template; edit the template, not the tap.
class Surveyor < Formula
  desc "Code intelligence graph with provenance, from the command line or over MCP"
  homepage "https://github.com/andrewdean/surveyor"
  version "0.2.0"
  license "Apache-2.0"

  # The default is the Apple silicon archive; the blocks below pick the right one on
  # every platform that has an archive. Without a default, `brew tap` rejects the
  # formula for the platforms that have none (Linux on ARM), so no one can tap it.
  url "https://github.com/andrewdean/surveyor/releases/download/v0.2.0/surveyor-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "a01fb9f8001d3fd34ab23da3740d53377597c5d112a0cbae2c4fbacd3171e335"

  on_macos do
    on_arm do
      url "https://github.com/andrewdean/surveyor/releases/download/v0.2.0/surveyor-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a01fb9f8001d3fd34ab23da3740d53377597c5d112a0cbae2c4fbacd3171e335"
    end
    on_intel do
      url "https://github.com/andrewdean/surveyor/releases/download/v0.2.0/surveyor-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "6bd11ad36700bf54abd295d93cc2c1ff059d3eba16d05397981b9c120d7c836c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrewdean/surveyor/releases/download/v0.2.0/surveyor-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dcbac65a47bd483aa7838cd8b034c9a0afa484316271a92e2b031bb16c8d6c4"
    end
  end

  def install
    bin.install "surveyor"
  end

  test do
    assert_match "surveyor #{version}", shell_output("#{bin}/surveyor --version")
  end
end
