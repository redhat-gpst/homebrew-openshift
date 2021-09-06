# How-To Update the Formulas

###ALL WORK SHOULD BE DONE IN THIS DIRECTORY

In this directory review and update any values in vars.yml you need. Pay particular attention to these:
```
odo_version: "v2.3.0"
rose_version: "1.1.1"
serverless_version: "0.22.0"
```
From this directory run the following command to update the files:
```
ansible-playbook main.yaml
```

To test changes to a set of tasks use (replace rosa with whatever name):
```
ansible-playbook -e what=rosa test.yaml
```
