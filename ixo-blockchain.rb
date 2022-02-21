# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class IxoBlockchain < Formula
  desc "This is the IXO blockchain for the Impact Hub"
  homepage ""
  url "https://github.com/ixofoundation/ixo-blockchain/releases/download/v0.18.0-rc1/ixod_darwin_amd64.tar.gz"
  sha256 "f6260e172e3f2863350b50aac60a68a824745a08e753ccffae50afea0c6d3446"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install "ixo-blockchaind" => "ixod"
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
#     system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ixo-blockchain`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
