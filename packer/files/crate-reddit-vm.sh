gcloud compute --project=lithe-resource-207814 instances create instance-2 \
		--zone=us-east1-b \
		--machine-type=f1-micro \
		--subnet=default \
		--maintenance-policy=MIGRATE \
		--service-account=101091309472-compute@developer.gserviceaccount.com \
		--image=reddit-full-13072018 \
		--image-project=lithe-resource-207814 \
		--boot-disk-size=10GB \
		--boot-disk-type=pd-standard \
		--boot-disk-device-name=instance-2
