class NoidaDb < Formula
  desc "One tiny local binary that speaks Postgres, MySQL, Redis, Kafka, Elasticsearch and ClickHouse"
  homepage "https://github.com/its-banana-coder/noida-db"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.1/noida-db-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "35b33e70653521fca0bb4b2075560565aa6a9c90a98aa639e5dfa162bf58a773"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.1/noida-db-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "ddf8fa20fe22b121a5e28d9b9a12f3a1cdda0216aa13d4f4cbbfadd0eb30bf51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.1/noida-db-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da981a1eff3404c6a09a9678786b79996cf38bd0cf4501640b7729e8c63a59dd"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.1/noida-db-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "733fbda7e2e909b3b604a9894713f14203c230ad879a0e062d95760ff2dfc34b"
    end
  end

  def install
    bin.install "noida-db"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noida-db --version")
  end
end
