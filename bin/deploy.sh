source rc.sh

cd ..
mvn clean package
google-cloud-cli.gcloud functions deploy "$FUNCTION_NAME" \
  --region europe-west3 \
  --runtime java11 \
  --max-instances 1 \
  --memory 128MB \
  --allow-unauthenticated \
  --trigger-http \
  --entry-point com.example.functions.WorldHealth \
  --set-env-vars HEALTH=OK