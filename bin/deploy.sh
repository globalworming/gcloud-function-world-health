### prereq
# install gcloud
# run gcloud init
# mvn clean package -f ../pom.xml
cd ..
google-cloud-cli.gcloud functions deploy world-health --entry-point com.example.functions.WorldHealth --runtime java11 --trigger-http --memory 128MB --allow-unauthenticated --region europe-west3 --set-env-vars HEALTH=OK --max-instances 1