class NoidaDb < Formula
  desc "One tiny local binary that speaks Postgres, MySQL, Redis, Kafka, Elasticsearch and ClickHouse"
  homepage "https://github.com/its-banana-coder/noida-db"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.2/noida-db-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "8b1b204401c9abc766542b1acc5ed7bb116bf76bd17660ab22b460b36facaaa0"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.2/noida-db-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "95a653e3e66dffea21ef678ed6bbaca0de8a3a26b895792767014b7e2f61d653"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.2/noida-db-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "562976b83246b39f1b19b461f7e7ac4bfe8254ddfb471bd132b61a2e70b3588d"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.1.2/noida-db-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "023cac674ea2d9f6032e57c562c2887267364876bc4a6d2c2d5407785b27a048"
    end
  end

  def install
    bin.install "noida-db"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noida-db --version")
  end
end
