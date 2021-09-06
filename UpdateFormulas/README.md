# How-To Update the Formulas

###ALL WORK SHOULD BE DONE IN THIS DIRECTORY

From this directory run the following command to update the formulas:
```
ansible-playbook main.yaml
```

To test changes to a set of tasks use (replace rosa with whatever file base name):
```
ansible-playbook -e what=rosa test.yaml
```
