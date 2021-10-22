class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.13/openshift-install-mac-4.8.13.tar.gz"
    sha256 "68685c2027b21114e453eeab5eb25fc7f0f6d3296415f51df6d20ca8e3958255"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.13/openshift-install-linux-4.8.13.tar.gz"
    sha256 "80e7afa26ac8c6ceefe3738e65e1efac588fbbdd0425510b938f89336819e67d"
  end

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
