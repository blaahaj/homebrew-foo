# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Vtracer < Formula
  desc "Convert raster images to SVG"
  homepage "https://github.com/visioncortex/vtracer"
  url "https://github.com/visioncortex/vtracer.git", tag: "0.6.5", revision:
    "6fdfec86109f6a94fd92a2ea64ddc8d03386779a"
  sha256 "fbfaf7438991e966b79d8382ae3e9eb001ac34f387d4fae73ece4d21cc6179bf"
  license ""

  depends_on "rust" => :build

  def install
    Dir.chdir "./cmdapp" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test vtracer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
