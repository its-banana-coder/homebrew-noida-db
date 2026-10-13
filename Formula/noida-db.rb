class NoidaDb < Formula
  desc "One tiny local binary that speaks Postgres, MySQL, Redis, Kafka, Elasticsearch and ClickHouse"
  homepage "https://github.com/its-banana-coder/noida-db"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.3/noida-db-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "85a3d8d5bdac000ccdf5404d1ee7f4628eb9666646b8f061e5b0d7d57ef90841"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.3/noida-db-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "238415f623530a9c290d86ca348953a2605a15efaafa6ce04baed0901e0f424b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.3/noida-db-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44fa46254ee11e7beab40ef914b14e4b3214f4472b1c38139ab718e367827704"
    end
    on_intel do
      url "https://github.com/its-banana-coder/noida-db/releases/download/v0.2.3/noida-db-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "111cb30cebf9cf26b6140b9da4e35b13bbc0de6f4bec1e785878c3250af0ea9d"
    end
  end

  def install
    bin.install "noida-db"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noida-db --version")
  end
end
