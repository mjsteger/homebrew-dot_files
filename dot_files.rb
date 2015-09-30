# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class DotFiles < Formula
  desc ""
  homepage ""
  url "https://github.com/mjsteger/dot_files/archive/0.0.3.tar.gz"
  version "0.0.3"
  sha256 "4ca5f6a59685c801f556ce877742543cad88c891d42624531cabe5ac6d45b1b7"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "git init && git submodule init && git submodule update"
    bin.install "install-dot-files"
  end
end
