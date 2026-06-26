class LaravelDevMcp < Formula
  desc "MCP server for local Laravel development (DB, logs, routes, Telescope)"
  homepage "https://github.com/stubbedev/laravel-dev-mcp"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-darwin-arm64.tar.gz"
      sha256 "7a0aa2b8c02867fa1091e4d6e2575fa76fe13f7f39960fa486c25b39e22958a5"
    end
    on_intel do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-darwin-amd64.tar.gz"
      sha256 "fc737e7b6ee50c84a16bf4a1b8517f2a02d8ae8ffe749c1cdf90bffa3715f8e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-linux-arm64.tar.gz"
      sha256 "41032ca306694f33cc0192aef9ab3de7082d84675ab78afde75b61e26b25f61f"
    end
    on_intel do
      url "https://github.com/stubbedev/laravel-dev-mcp/releases/download/v#{version}/laravel-dev-mcp-#{version}-linux-amd64.tar.gz"
      sha256 "621a29a559db48e50ed1fb02de6fa51ae25f7c41578015cd0a1cdf3ec7ebda95"
    end
  end

  def install
    bin.install "laravel-dev-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/laravel-dev-mcp --version")
  end
end
