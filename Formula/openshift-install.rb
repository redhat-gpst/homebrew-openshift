class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.15/openshift-install-mac-4.8.15.tar.gz"
    sha256 "be376650da20eb7a14407c9cefea5860f7cc74f3aaaa4f35598fe6bbea2200dc"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.15/openshift-install-linux-4.8.15.tar.gz"
    sha256 "b19af658e3affc7a551a0cc8e53d21585b94ce80e340c806d677a63fdacaff62"
  end

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
