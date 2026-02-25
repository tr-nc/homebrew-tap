class Lazylog < Formula
  desc "Terminal-based log viewer"
  homepage "https://github.com/tr-nc/lazylog"
  version "0.5.5"

  # Points to the precompiled binary in the GitHub releases panel
  url "https://github.com/tr-nc/lazylog/releases/download/v0.5.5/lazylog-macos.tar.gz"
  
  # IMPORTANT: You must calculate and insert the actual SHA256 hash of the lazylog-macos.tar.gz file.
  # You can find this by running: shasum -a 256 lazylog-macos.tar.gz
  sha256 "ac9249d4458822fb66a2b936dfd5d26ec46f95348ed582946ae113a1ced38bc2"

  def install
    # Homebrew automatically downloads and extracts the tar.gz archive.
    # We just need to install the extracted 'lazylog' binary into the bin folder.
    bin.install "lazylog"
  end

  test do
    # A simple test to verify the binary executes
    system "#{bin}/lazylog", "--help"
  end
end
