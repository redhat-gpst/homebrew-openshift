class Odo < Formula
  desc "odo is a CLI tool for running OpenShift applications in a fast and automated manner"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.3.1/odo-darwin-amd64.tar.gz"
    sha256 "e851c190ed06e2dc2049f07fcf595b0d5ad2ac409032397c44c4964e89cbe196"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.3.1/odo-linux-arm64.tar.gz"
    sha256 "8163a6917dd5fc67743e321ab2fdfb1144e5523f9fe11676a4dbfa1b6342f51e"
  end

  bottle :unneeded

  def install
    bin.install "odo"
  end

  test do
    run_output = shell_output("#{bin}/odo 2>&1")
    assert_match "OpenShift applications", run_output
  end
end
