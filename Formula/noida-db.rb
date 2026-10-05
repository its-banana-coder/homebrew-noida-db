class NoidaDb < Formula
  desc "One tiny local binary that speaks Postgres, MySQL, Redis, Kafka, Elasticsearch and ClickHouse"
  homepage "https://github.com/its-banana-coder/noida-db"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.0/noida-db-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "96bdbc61cc0fb587e5240d008432b134ce0096f535a0bc143ec2077ba2b4f699"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.0/noida-db-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a0e706649411b0382ded4847b23dd70d279c0ac4f04ac6d7d4d8b14055757d3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.0/noida-db-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cbe58c6edd0cdcffde1461a085e3b34c2d65b7726b2fe5476cfc615c2ef47e1"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.0/noida-db-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34c9dbbf29b646c149db7e8206fd47a1be52c4bb87a374e16f6f0787ca6d6647"
    end
  end

  def install
    bin.install "noida-db"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noida-db --version")
  end
end
