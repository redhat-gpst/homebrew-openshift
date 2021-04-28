class Odo < Formula
  desc "odo is a CLI tool for running OpenShift applications in a fast and automated manner"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.1.0/odo-darwin-amd64.tar.gz"
  sha256 "10f2b4f748bb33c3d4bd9486c62472e9ee51703709d2e4f235460ef5ff686b86"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "odo"
  end

  test do
    run_output = shell_output("#{bin}/odo 2>&1")
    assert_match "OpenShift applications", run_output
  end
end
