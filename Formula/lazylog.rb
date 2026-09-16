class Lazylog < Formula
  desc "Terminal-based log viewer"
  homepage "https://github.com/tr-nc/lazylog"
  version "0.11.1"

  # Points to the precompiled binary in the GitHub releases panel
  url "https://github.com/tr-nc/lazylog/releases/download/v0.11.1/lazylog-macos.tar.gz"
  
  # IMPORTANT: You must calculate and insert the actual SHA256 hash of the lazylog-macos.tar.gz file.
  # You can find this by running: shasum -a 256 lazylog-macos.tar.gz
  sha256 "d6c4c1a6d00aa4e8d00ad336790debb4cb3f2908958fe1bdc445db4022b63dd3"

  def install
    # Install the main binary
    bin.install "lazylog"
    
    # Create a symlink named 'zl' pointing to 'lazylog'
    bin.install_symlink "lazylog" => "zl"
  end

  test do
    # A simple test to verify the binary executes
    system "#{bin}/lazylog", "--help"
  end
end
