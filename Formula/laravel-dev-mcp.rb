class LaravelDevMcp < Formula
  desc "MCP server for local Laravel development (DB, logs, routes, Telescope)"
  homepage "https://github.com/stubbedev/laravel-dev-mcp"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-darwin-arm64.tar.gz"
      sha256 "489d1711a59e64ae78dfe6e2ec21f042df3ca3a9fadcb9004c2208a928c02e18"
    end
    on_intel do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-darwin-amd64.tar.gz"
      sha256 "a7d1c3b37071a1979d931a71cd6b5fd96dfa671b8f7f56bf97d1b3e9eb870204"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-linux-arm64.tar.gz"
      sha256 "a271235af6c732bf1a55927a5e0452b67dcaffc76b32915d27ea2220895f4e02"
    end
    on_intel do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-linux-amd64.tar.gz"
      sha256 "68c50e8369aeb99392c3aefb9251c19ae3296bc011b91d306a8ae3278b1adf8d"
    end
  end

  def install
    bin.install "laravel-dev-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/laravel-dev-mcp --version")
  end
end
