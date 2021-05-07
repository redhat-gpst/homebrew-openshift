class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.10/openshift-install-mac-4.7.10.tar.gz"
  sha256 "3d0bc2cd7f3b6355b7d7143aba70997170d56681a9c6be77c7989f382bab08a3"
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
