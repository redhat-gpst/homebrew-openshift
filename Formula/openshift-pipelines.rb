class OpenshiftPipelines < Formula
  desc "Red Hat OpenShift Pipelines management"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/0.17.2/tkn-macos-amd64-0.17.2.tar.gz"
  sha256 "921985f0a5569d6c0f2d6b58482f64462a9dcb5af4b8aaa8520ea4e4d9e2750d"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "tkn"
  end

  test do
    run_output = shell_output("#{bin}/tkn 2>&1")
    assert_match "OpenShift", run_output
  end
end
