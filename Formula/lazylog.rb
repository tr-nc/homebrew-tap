class Lazylog < Formula
  desc "Terminal-based log viewer"
  homepage "https://github.com/tr-nc/lazylog"
  version "0.8.2"

  # Points to the precompiled binary in the GitHub releases panel
  url "https://github.com/tr-nc/lazylog/releases/download/v0.8.2/lazylog-macos.tar.gz"
  
  # IMPORTANT: You must calculate and insert the actual SHA256 hash of the lazylog-macos.tar.gz file.
  # You can find this by running: shasum -a 256 lazylog-macos.tar.gz
  sha256 "f99cce6749c2da7e5abf29cb3523ff172c6bdf47db396e15ee11d67f20e8da84"

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
