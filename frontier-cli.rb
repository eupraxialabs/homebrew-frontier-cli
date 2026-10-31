class FrontierCli < Formula
  desc "CLI for the Federal Frontier Platform — cluster management, AI assistant, infrastructure ops"
  homepage "https://readthedocs.eupraxia.io/docs/frontier-cli/overview/"
  version "5.8.0"
  license "Proprietary"

  deprecate! date: "2026-10-31", because: "is replaced by eupraxialabs/frontier/frontier", replacement_formula: "eupraxialabs/frontier/frontier"

  # Set HOMEBREW_FRONTIER_CLI_TOKEN to a read_package_registry deploy token (ask platform team).
  @@base = "https://gitlab.com/api/v4/projects/41561861/packages/generic/frontier-cli/v#{version}"

  if OS.mac? && Hardware::CPU.arm?
    url "#{@@base}/frontier-darwin-arm64", headers: ["Deploy-Token: #{ENV.fetch("HOMEBREW_FRONTIER_CLI_TOKEN", "")}"]
    sha256 "7c8e359b7c2ec4d6f4625462533324b38458f178151e599b78bcb818708ed3bb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "#{@@base}/frontier-darwin-amd64", headers: ["Deploy-Token: #{ENV.fetch("HOMEBREW_FRONTIER_CLI_TOKEN", "")}"]
    sha256 "beb5de1f337e981cffed3a1a8cae0f99f81f4229d9fde1399314c49343527f1d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "#{@@base}/frontier-linux-arm64", headers: ["Deploy-Token: #{ENV.fetch("HOMEBREW_FRONTIER_CLI_TOKEN", "")}"]
    sha256 "e2e7c7adcdcc226de9585368ba0fa260afea7adc94c5990f2ee28e87db338010"
  elsif OS.linux? && Hardware::CPU.intel?
    url "#{@@base}/frontier-linux-amd64", headers: ["Deploy-Token: #{ENV.fetch("HOMEBREW_FRONTIER_CLI_TOKEN", "")}"]
    sha256 "fcb3ceac0b7b05fd6f2a96153dd413854b83d8a860d4c5ccedd994c1fcca5f7c"
  end

  def install
    downloaded = Dir.glob("frontier-*").first || Dir.glob("*").reject { |f| f == "." }.first
    bin.install downloaded => "frontier"
  end

  test do
    assert_match "frontier-cli", shell_output("#{bin}/frontier version 2>&1")
  end
end
