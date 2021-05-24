class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.12/openshift-client-mac-4.7.12.tar.gz"
  sha256 "d52699c6796cdfc3a2f8f5c71c8a63a82db7b8aeb44fdf38c431d7b6df4b8ede"
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
