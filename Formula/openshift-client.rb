class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.13/openshift-client-mac-4.8.13.tar.gz"
    sha256 "9740e5e1c78da1dadfde5e733278015a2c156b2ab91507cb7fe198bb1a8c981d"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.13/openshift-client-linux-4.8.13.tar.gz"
    sha256 "80e7afa26ac8c6ceefe3738e65e1efac588fbbdd0425510b938f89336819e67d"
  end

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
