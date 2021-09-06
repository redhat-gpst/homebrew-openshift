class Kn < Formula
  desc "kn is a CLI tool for working with OpenShift serverless applications"
  homepage "https://cloud.redhat.com/learn/topics/serverless"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.22.0/kn-macos-amd64.tar.gz"
    sha256 "266e16853783ef1ff65b66d4a1920ba7404385be3e52e3ea00b3dbdd586872f9"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/serverless/0.22.0/kn-linux-amd64.tar.gz"
    sha256 "92940d28f3262055f243ac32b0c0fd83e84942dd6a7080885e03814ab145f79a"
  end

  bottle :unneeded

  def install
    bin.install "odo"
  end

  test do
    run_output = shell_output("#{bin}/kn 2>&1")
    assert_match "Knative Serving and Eventing", run_output
  end
end
