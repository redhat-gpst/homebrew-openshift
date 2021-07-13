class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.0/openshift-client-mac-4.8.0.tar.gz"
  sha256 "13e0079b602a83eb2048f3dbe2179a55757a1b54cb291e4cb63ff87e86fadeac"
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
