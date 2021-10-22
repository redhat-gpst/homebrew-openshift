class OpenshiftServerless < Formula
  desc "kn is a CLI tool for working with OpenShift serverless applications"
  homepage "https://cloud.redhat.com/learn/topics/serverless"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.23.2/kn-macos-amd64.tar.gz"
    sha256 "9b2cb0131f045d391756c09ed6eee92186cec4a4ac948ac2be2a0f325c6a3aa2"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.23.2/kn-linux-amd64.tar.gz"
    sha256 "29db6d13e570c7d1884952a0eaf1889f4402e9c930568075e47b41fd2799f2f3"
  end

  def install
    bin.install "kn"
  end

  test do
    run_output = shell_output("#{bin}/kn 2>&1")
    assert_match "Knative Serving and Eventing", run_output
  end
end
