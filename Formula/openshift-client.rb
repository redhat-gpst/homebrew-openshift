class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.15/openshift-client-mac-4.8.15.tar.gz"
    sha256 "b8b10e2cb083379ada301a08e23a3d1f3cade87b2a2a3c966aaba1ced496c8a3"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.15/openshift-client-linux-4.8.15.tar.gz"
    sha256 "b19af658e3affc7a551a0cc8e53d21585b94ce80e340c806d677a63fdacaff62"
  end

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
