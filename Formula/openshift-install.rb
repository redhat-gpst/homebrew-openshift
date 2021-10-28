class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.17/openshift-install-mac-4.8.17.tar.gz"
    sha256 "d4649e19d6a3417f1b40ca3a63653af87b04eb8b63ce6ca352d0a7d425cf2c48"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.17/openshift-install-linux-4.8.17.tar.gz"
    sha256 "2381ff56868f042942be6e1aaeaa87949485288604adbdd37d61e55b6e358d1c"
  end

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
