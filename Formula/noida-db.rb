class NoidaDb < Formula
  desc "One tiny local binary that speaks Postgres, MySQL, Redis, Kafka, Elasticsearch and ClickHouse"
  homepage "https://github.com/its-banana-coder/noida-db"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.2/noida-db-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "9fd8648a501e971542d5ea6c2febd53eba5face3047a5274d172a13b9918d274"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.2/noida-db-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "dd97e73c9d6ec620f795a284e5005ad72a8b9fd0fa435184e1d7243559af5603"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.2/noida-db-0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8561427a72cc4b6ce2c86471d238a353ba1608c4c6546ce9fe2a4c82b8ce0752"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.2/noida-db-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28835373e9886e75e14794ca9abfbadec4789e618498514421f96b67a04c8888"
    end
  end

  def install
    bin.install "noida-db"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noida-db --version")
  end
end
