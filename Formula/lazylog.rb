class Lazylog < Formula
  desc "Internal CLI tool lazylog"
  homepage "https://code.byted.org/ies/lazylog"

  url "https://code.byted.org/ies/lazylog.git", branch: "release"

  version "0.5.1"

  depends_on "rust" => :build

  def install
    ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"

    # Compiles the specific package from the downloaded workspace
    system "cargo", "build", "--release", "--package", "lazylog"

    # Moves the compiled binary into Homebrew's bin folder
    bin.install "target/release/zl"
  end

  test do
    # A simple test to verify the binary executes
    system "#{bin}/zl", "--help"
  end
end
