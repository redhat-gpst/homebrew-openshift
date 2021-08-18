class Odo < Formula
  desc "odo is a CLI tool for running OpenShift applications in a fast and automated manner"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.2.4/odo-darwin-amd64.tar.gz"
  sha256 "128c09c22d4e12f21ab5007c9427e8e8b9575e6f0a390b796623cf7770b2b0e5"
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
