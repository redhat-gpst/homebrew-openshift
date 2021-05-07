class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.6.28/openshift-install-mac-4.6.28.tar.gz"
  sha256 "86022b3514b3f203114c17f2e224613ac70e0876597eec56c08576994ed5de1d"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
