class Odo < Formula
  desc "odo is a CLI tool for running OpenShift applications in a fast and automated manner"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.2.3/odo-darwin-amd64.tar.gz"
  sha256 "56e588593520d79a1e8c16309fd4ce5ab88bdae4bb3c577332dbf5cbbf8ef795"
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
