class Lazylog < Formula
  desc "Terminal-based log viewer"
  homepage "https://github.com/tr-nc/lazylog"
  version "0.6.1"

  # Points to the precompiled binary in the GitHub releases panel
  url "https://github.com/tr-nc/lazylog/releases/download/v0.6.1/lazylog-macos.tar.gz"
  
  # IMPORTANT: You must calculate and insert the actual SHA256 hash of the lazylog-macos.tar.gz file.
  # You can find this by running: shasum -a 256 lazylog-macos.tar.gz
  sha256 "4ba1f73615cde832a1427b10ca94f388f19351587a949be52b3127fcef6c1d27"

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
