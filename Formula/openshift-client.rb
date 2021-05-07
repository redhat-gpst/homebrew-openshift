class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.10/openshift-client-mac-4.7.10.tar.gz"
  sha256 "c85d26154009aa8587f1cfb554412996412ad27dba8f233a5be37b09e3d71fdc"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
