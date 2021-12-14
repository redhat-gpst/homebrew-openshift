class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.24/openshift-client-mac-4.8.24.tar.gz"
    sha256 "035af1ffa33822739202d71ac92899dbcd4abf3a6324238d15a070fc053f3abe"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.24/openshift-client-linux-4.8.24.tar.gz"
    sha256 "d29185353ce02b50c8b2f451955b4c8abb2ba1def0ebbd43737d33acb96690a8"
  end

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
