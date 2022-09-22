class Wftest < Formula
  desc "Test formula"
  homepage "https://github.com/AnqiPang/homebrew-test-tap"
  url "https://github.com/AnqiPang/wftest/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "96c332d22b156d584e6bff4fe5d17138fc978eed505e84848309a5e1a7185246"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "test tap demo installed"
  end

  test do
    system "false"
  end
end
