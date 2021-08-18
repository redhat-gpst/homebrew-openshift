class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.6.42/openshift-client-mac-4.6.42.tar.gz"
  sha256 "d1fc257a2b0fef6360fd1c405b25de0f37f01273a30be11698dfa4e4b5a60da3"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
