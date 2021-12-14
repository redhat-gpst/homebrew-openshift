class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.9.10/openshift-client-mac-4.9.10.tar.gz"
    sha256 "141bd92e16e210db41823f53c15e30b970c3a120f1308a824338a23e426d346e"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.9.10/openshift-client-linux-4.9.10.tar.gz"
    sha256 "cd819452308e104c8c31656fb005ebf807ede62730cc0a291030c4e64381098b"
  end

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
