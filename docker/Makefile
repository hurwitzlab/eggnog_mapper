TAG = hurwitzlab/eggnog_mapper:2.0.1
DATA_DIR = /data/kyclark/eggnog

img:
	docker build --tag=$(TAG) .

run:
	docker run --rm $(TAG)

download:
	docker run -v /data:/data --rm $(TAG) download_eggnog_data.py -y --data_dir $(DATA_DIR)

help:
	docker run -v /data:/data --rm $(TAG) emapper.py --help

emapper:
	docker run -v /data:/data --rm $(TAG) emapper.py --data_dir $(DATA_DIR)

ohana_genes:
	docker run -v /data:/data --rm $(TAG) emapper.py --data_dir $(DATA_DIR) -o /data/kyclark/ohana-eggnog/genes -i /data/kyclark/nonredundant_genes/ALOHAgenecat_v2_nonredundant.ffn -m diamond

shell:
	docker run --rm -it $(TAG) bash

push: 
	docker push $(TAG)
