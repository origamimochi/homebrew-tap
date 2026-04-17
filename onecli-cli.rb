class OnecliCli < Formula
  desc "Manage agents, secrets, and configuration from the terminal"
  homepage "https://github.com/onecli/onecli-cli"
  version "1.2.1"

  on_macos do
    on_arm do
      url "https://github.com/onecli/onecli-cli/releases/download/v1.2.1/onecli_1.2.1_darwin_arm64.tar.gz"
      sha256 "cae74df14c1feb39eda02791ee2fd91da1d0490968a93debc18834f186c5e838"
    end

    on_intel do
      url "https://github.com/onecli/onecli-cli/releases/download/v1.2.1/onecli_1.2.1_darwin_amd64.tar.gz"
      sha256 "e1f3a78b6223bf1fb80eb3ebfa8f2e746d3cd511d03163612218af33b9fff103"
    end
  end

  license "Apache-2.0"

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    bin.install "onecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onecli version")
  end
end
