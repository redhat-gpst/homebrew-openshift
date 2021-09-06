class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.9/openshift-client-mac-4.8.9.tar.gz"
    sha256 "9cd25ab81d605092fc491b282e78762965a01ce620e623ac36f05e6416c0755e"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.9/openshift-client-linux-4.8.9.tar.gz"
    sha256 "1d19e944a7d409f5a43e7843e6cc312c7f5896f02f207804b89dc5bd4b7ce87b"
  end

  bottle :unneeded

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
