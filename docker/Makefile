TAG = hurwitzlab/eggnog_mapper:0.1.0

img:
	docker build --tag=$(TAG) .

run:
	docker run --rm $(TAG)

shell:
	docker run --rm -it $(TAG) bash

push: 
	docker push $(TAG)
