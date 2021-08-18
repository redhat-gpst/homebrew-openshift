class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.6/openshift-client-mac-4.8.6.tar.gz"
  sha256 "fb0e2be1dbe349878bdadd90ad8a78c4b684b295ca3d0fd8405278f25d53715f"
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
