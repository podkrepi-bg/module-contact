# Deployment
To deploy the module make sure you do the following:
- Set the database password to the correct value. Run `echo -n secretpass | base64` and paste the output in the `db-secret.yaml`.
- Update the container versions in `module-contact.yaml`
- Verify the database endpoint configuration

After that run:
```bash
kubectl create namespace contact
kubectl apply -f db-secret.yaml
kubectl apply -f module-contact.yaml
```