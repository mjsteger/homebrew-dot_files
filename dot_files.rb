# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class DotFiles < Formula
  desc ""
  homepage ""
  url "https://github.com/mjsteger/dot_files/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "c877607ee7be7f60061a4f4fa4d670763c4c4660a2a9685a927e5f3365685e38"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "git init && git submodule init && git submodule update"
    bin.install "install-dot-files"
  end
end
