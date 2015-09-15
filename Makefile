build:
	cd backup && docker build -t dogestry.in/digitaloptgroup/s3-backup . && 	cd ..
	cd restore && docker build -t dogestry.in/digitaloptgroup/s3-restore . && cd ..

push:
	make build
	docker push dogestry.in/digitaloptgroup/s3-backup
	docker push dogestry.in/digitaloptgroup/s3-restore
