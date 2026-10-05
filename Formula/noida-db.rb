class NoidaDb < Formula
  desc "One tiny local binary that speaks Postgres, MySQL, Redis, Kafka, Elasticsearch and ClickHouse"
  homepage "https://github.com/its-banana-coder/noida-db"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.1/noida-db-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "3e3705f736c897039469be3038e3ee0639f85b8573712fd81c1c912c29e75ce2"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.1/noida-db-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "4d39ed56e4c43c76936316cec6fc60d31c65602d7b5ed4d0e6e75df93e42b61e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.1/noida-db-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9af82337f40dcfd4a79b0f4dddb0f245b70149afb7d6bec211801627fe75c3c"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.1/noida-db-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e4e7c6eb1c28327d258f28558a77fc3621b46f309c585e08ac8490cf5897e51"
    end
  end

  def install
    bin.install "noida-db"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noida-db --version")
  end
end
