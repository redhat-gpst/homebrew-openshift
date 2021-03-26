class Odo < Formula
  desc "odo is a CLI tool for running OpenShift applications in a fast and automated manner"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.0.7/odo-darwin-amd64.tar.gz"
  sha256 "29fe926b4f45ad64eb5d4d555dbf94c4b87e0417520a5d9bd33bdbb25dee2be8"
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
