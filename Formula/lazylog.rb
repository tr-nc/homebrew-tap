class Lazylog < Formula
  desc "Terminal-based log viewer"
  homepage "https://github.com/tr-nc/lazylog"
  version "0.5.4"

  # Points to the precompiled binary in the GitHub releases panel
  url "https://github.com/tr-nc/lazylog/releases/download/v0.5.4/zl-macos.tar.gz"
  
  # IMPORTANT: You must calculate and insert the actual SHA256 hash of the zl-macos.tar.gz file.
  # You can find this by running: shasum -a 256 zl-macos.tar.gz
  sha256 "f4cda7b6b352dabe39a5f1cf3a98153856b502ae177db4116b93017ec9926289"

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
