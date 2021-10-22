class OpenshiftServerless < Formula
  desc "kn is a CLI tool for working with OpenShift serverless applications"
  homepage "https://cloud.redhat.com/learn/topics/serverless"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.24.0/kn-macos-amd64.tar.gz"
    sha256 "8f3cde6b4237c0725963fdfcaf14732ff1992ff8ccdacd68d25f181b1a17cb82"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.24.0/kn-linux-amd64.tar.gz"
    sha256 "0c63c5a31463cf44f0638a161bf70b62637eb2c71e0e53b2a655b398753a7bda"
  end

  def install
    bin.install "kn"
  end

  test do
    run_output = shell_output("#{bin}/kn 2>&1")
    assert_match "Knative Serving and Eventing", run_output
  end
end
