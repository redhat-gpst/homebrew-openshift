class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.6/openshift-install-mac-4.8.6.tar.gz"
  sha256 "2e6361e474f8934ebec899825c9b96451d47b5f433fe8846b8b779947cebb25b"
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
