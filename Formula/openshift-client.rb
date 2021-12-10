class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.23/openshift-client-mac-4.8.23.tar.gz"
    sha256 "2700365cf4b31e1f4ab988f5eef26cca832dfcdf4639e8b1e6b63d068c9d8c2e"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.23/openshift-client-linux-4.8.23.tar.gz"
    sha256 "9005af0e02d1ff97a800337f1e10304397932dc46c6ef0e6c26088206522aa86"
  end

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
