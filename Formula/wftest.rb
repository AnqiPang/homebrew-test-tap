class Wftest < Formula
  desc "Test formula"
  homepage "https://github.com/AnqiPang/homebrew-test-tap"
  url "https://github.com/AnqiPang/wftest/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "96c332d22b156d584e6bff4fe5d17138fc978eed505e84848309a5e1a7185246"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/AnqiPang/homebrew-test-tap/releases/download/wftest-0.0.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "6c3db6d12764b620fcd5cff4c621c83903093b9397e1c36fea01dd030d6e85ac"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9f4b67e58dd7feb200e1e15aff91bfd6ff97e79b6413a0b8e74aee61014bde38"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "test tap demo installed"
  end

  test do
    assert_match "Hello, demo", shell_output("#{bin}/main")
  end
end
