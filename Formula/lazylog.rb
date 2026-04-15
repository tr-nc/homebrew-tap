class Lazylog < Formula
  desc "Terminal-based log viewer"
  homepage "https://github.com/tr-nc/lazylog"
  version "0.8.0"

  # Points to the precompiled binary in the GitHub releases panel
  url "https://github.com/tr-nc/lazylog/releases/download/v0.8.0/lazylog-macos.tar.gz"
  
  # IMPORTANT: You must calculate and insert the actual SHA256 hash of the lazylog-macos.tar.gz file.
  # You can find this by running: shasum -a 256 lazylog-macos.tar.gz
  sha256 "47bf88a20fe786437c3632d7048855630a7097f93dedb4aaedf860c19a8bf22f"

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
