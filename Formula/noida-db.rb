class NoidaDb < Formula
  desc "One tiny local binary that speaks Postgres, MySQL, Redis, Kafka, Elasticsearch and ClickHouse"
  homepage "https://github.com/its-banana-coder/noida-db"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.3/noida-db-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "6586b9848ba7a85b5237fc06e6d2c23336836287614f9b53394ae2306515b233"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.3/noida-db-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "05d11f198c625f3ee5ec81a2d2c33af62a64240756e78fee499a662fc605c6b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.3/noida-db-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f42037f4c6fd64ec21f0ed5f65c54cd58d853713f2b56d62f7c98c1058922429"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.3/noida-db-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0d0134403120b949a6ad0232a2b99f8d28b2d980b47158c53ee356bdda8b791"
    end
  end

  def install
    bin.install "noida-db"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noida-db --version")
  end
end
