class Dura < Formula
    desc "You shouldn't ever lose your work if you're using Git"
    homepage "https://github.com/MisileLab/homebrew-dura"
    url "https://github.com/MisileLab/homebrew-dura"
    version "0.1.0"
    sha256 ""
    license "Apache License, Version 2.0"
  
    depends_on "rust" => :build
    depends_on "git"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      system "git", "clone", "https://github.com/tkellogg/dura", "-b", "v0.1.0"
      system "cd", "dura"
      system "cargo", "install", "--path", "."
    end
  
    test do
      system "false"
    end
  end
  
