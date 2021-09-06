class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.9/openshift-install-mac-4.8.9.tar.gz"
    sha256 "caf58b43aa2b48c77aa96386e4453720b0a3b9bd5ae75c8fed336e18cf1464e8"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.9/openshift-install-linux-4.8.9.tar.gz"
    sha256 "1d19e944a7d409f5a43e7843e6cc312c7f5896f02f207804b89dc5bd4b7ce87b"
  end

  bottle :unneeded

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
