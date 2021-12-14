class OpenshiftPipelines < Formula
  desc "Red Hat OpenShift Pipelines management"
  homepage "https://cloud.redhat.com/learn/topics/ci-cd"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/0.21.0/tkn-macos-amd64-0.21.0.tar.gz"
    sha256 "7b47c7dbe08b97ad525a7fbf1830f789e2887a5f78af6659b1dcde7848bc1095"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/0.21.0/tkn-linux-amd64-0.21.0.tar.gz"
    sha256 "a3dfa8417fe16f74126c45d79e407ab229a7c2f33362686432eae2221dbbf683"
  end

  def install
    bin.install "tkn"
  end

  test do
    run_output = shell_output("#{bin}/tkn 2>&1")
    assert_match "OpenShift", run_output
  end
end
