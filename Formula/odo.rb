class Odo < Formula
  desc "odo is a CLI tool for running OpenShift applications in a fast and automated manner"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.2.2/odo-darwin-amd64.tar.gz"
  sha256 "fadd7afec19c70ba9fecb917e98c296fa41a06489de9267c25d29a2fb6f653a6"
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
