# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wftest < Formula
  desc "test formula"
  homepage "https://github.com/AnqiPang/homebrew-test-tap"
  url "https://github.com/AnqiPang/wftest/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "96c332d22b156d584e6bff4fe5d17138fc978eed505e84848309a5e1a7185246"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "test tap demo installed"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test wftest`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
