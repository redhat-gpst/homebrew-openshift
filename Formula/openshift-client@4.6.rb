class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.6.28/openshift-client-mac-4.6.28.tar.gz"
  sha256 "b2b3c2519814a65f65b8cdbd007d62202a3caf00a5ce83b475557ac32b9499fb"
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
