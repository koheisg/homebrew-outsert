# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Outsert < Formula
  desc ""
  homepage "https://github.com/koheisg/outsert"
  url "https://github.com/koheisg/outsert/archive/v0.0.3.tar.gz"
  sha256 "e38a9b00b94d91b4f33fd45cfb86e230a73f5f7fde911088affef9448ddf09a2"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install "outsert"
  end

  test do
    system "#{bin}/outsert", "--version"
    assert_equal 0, $?.exitstatus
  end
end
