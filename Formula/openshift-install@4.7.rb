class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.25/openshift-install-mac-4.7.25.tar.gz"
  sha256 "965ca9678a6df49e81490189b45933f48c06ce9ddfc1e13a002b2b9f94a7a50c"
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
