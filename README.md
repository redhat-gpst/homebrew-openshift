# Homebrew for Red Hat OpenShift

Formulae used to deploy command-line utilities related to OpenShift on Mac, these are not Linux compatible.

## How do I install these formulae?

Two simple steps. First add the tap `brew tap redhat-gpst/openshift` then install what you need `brew install <formula>` or to be explicit and avoid any conflicts with core or other taps use `brew install redhat-gpst/openshift/<formula>`

## What formulas are available

* [OpenShift client -- oc](https://docs.openshift.com/container-platform/4.8/cli_reference/openshift_cli/getting-started-cli.html) -- [can replace kubectl from Kubernetes](https://kubernetes.io/docs/reference/kubectl/overview/)
```
brew install redhat-gpst/openshift/openshift-client
```

* [OpenShift installation command line tool](https://docs.openshift.com/container-platform/4.8/installing/index.html)
```
brew install redhat-gpst/openshift/openshift-install
```

* [Red Hat OpenShift on AWS command line tool -- rosa](https://docs.aws.amazon.com/ROSA/latest/userguide/getting-started.html)
```
brew install redhat-gpst/openshift/rosa
```

* [OpenShift Pipelines command line tool](https://docs.openshift.com/container-platform/4.8/cicd/pipelines/understanding-openshift-pipelines.html) -- [its the tkn CLI from Tekton](https://tekton.dev/)
```
brew install redhat-gpst/openshift/openshift-install
```

* [OpenShift Serverless command line tool](https://docs.openshift.com/container-platform/4.8/installing/index.html) -- [its kn from Knative](https://knative.dev/docs/)
```
brew install redhat-gpst/openshift/openshift-install
```

* [odo - Developer focused CLI for Kubernetes and OpenShift](https://developers.redhat.com/products/odo/overview)
```
brew install redhat-gpst/openshift/odo
```

* [opm - Part of the Operator Framework](https://docs.openshift.com/container-platform/4.8/cli_reference/opm-cli.html)
```
brew install redhat-gpst/openshift/opm
```
