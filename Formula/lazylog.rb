class Lazylog < Formula
  desc "Terminal-based log viewer"
  homepage "https://github.com/tr-nc/lazylog"
  version "0.5.3"

  # Points to the precompiled binary in the GitHub releases panel
  url "https://github.com/tr-nc/lazylog/releases/download/v#{version}/zl-macos.tar.gz"
  
  # IMPORTANT: You must calculate and insert the actual SHA256 hash of the zl-macos.tar.gz file.
  # You can find this by running: shasum -a 256 zl-macos.tar.gz
  sha256 "ce3f6c4a9ac967b6ddd3c5179a24f52f7059b711943c9f806ec729a2336457a3"

  def install
    # Homebrew automatically downloads and extracts the tar.gz archive.
    # We just need to install the extracted 'zl' binary into the bin folder.
    bin.install "zl"
  end

  test do
    # A simple test to verify the binary executes
    system "#{bin}/zl", "--help"
  end
end
