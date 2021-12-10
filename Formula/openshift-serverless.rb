class OpenshiftServerless < Formula
  desc "kn is a CLI tool for working with OpenShift serverless applications"
  homepage "https://cloud.redhat.com/learn/topics/serverless"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.25.1/kn-macos-amd64.tar.gz"
    sha256 "7819b1c10cb4edba12b3d3e76bf64965179650237e5c13766e095f08358babf7"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.25.1/kn-linux-amd64.tar.gz"
    sha256 "0ec37c444f168e1a8e873bd431fbfa027e9a58e0ba2e2113760f61ac0299787c"
  end

  def install
    bin.install "kn"
  end

  test do
    run_output = shell_output("#{bin}/kn 2>&1")
    assert_match "Knative Serving and Eventing", run_output
  end
end
