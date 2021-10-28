class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.17/openshift-client-mac-4.8.17.tar.gz"
    sha256 "7de347f9d00fdf6494efaa08f129addb4a1346360d3515f6df69aaa0d190a71c"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.17/openshift-client-linux-4.8.17.tar.gz"
    sha256 "2381ff56868f042942be6e1aaeaa87949485288604adbdd37d61e55b6e358d1c"
  end

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
