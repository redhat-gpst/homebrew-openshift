class Odo < Formula
  desc "odo is a CLI tool for running OpenShift applications in a fast and automated manner"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.3.0/odo-darwin-amd64.tar.gz"
    sha256 "0831f81c00e1f7201763669c36058e685957cfb2489fb23f271cdd090abf868b"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v2.3.0/odo-linux-arm64.tar.gz"
    sha256 "9ad77b2f3ceec82bc2bed4c0a490ae98a5fcde5e7c1a90c823f3685e7e345aec"
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
