kubectl apply -f green.yml

sleep 1
# Begin Green deployment
while [ $(kubectl get pods -n udacity | grep -c green) -ne 3 ]
do
  echo "Green Deployment in progress.."
done

echo "Green deployment successful."
