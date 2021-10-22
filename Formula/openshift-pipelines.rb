class OpenshiftPipelines < Formula
  desc "Red Hat OpenShift Pipelines management"
  homepage "https://cloud.redhat.com/learn/topics/ci-cd"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/0.19.1/tkn-macos-amd64-0.19.1.tar.gz"
    sha256 "e689f8f141d644b2d5dc32610b4c6c6212e2ed5a67a9c1531c288baf9f6acfe5"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/0.19.1/tkn-linux-amd64-0.19.1.tar.gz"
    sha256 "cf4e3c8d480569279a8e11804955f8cb910f05e8b57160eff0585532a8423ee0"
  end

  def install
    bin.install "tkn"
  end

  test do
    run_output = shell_output("#{bin}/tkn 2>&1")
    assert_match "OpenShift", run_output
  end
end
