class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.6.42/openshift-install-mac-4.6.42.tar.gz"
  sha256 "f366380150c8574ce9f40998dd1b47f7c141f8c7b8dfb6886de47200883d24c7"
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
