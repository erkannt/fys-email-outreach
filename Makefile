2017-scihub-statistics.tsv:
	curl \
		-L \
		--output 2017-scihub-statistics.tsv.xz \
		https://github.com/greenelab/scihub/raw/master/download/scihub-logs-2017/2017.statistics.1016.j.tab.xz
	pixz -d 2017-scihub-statistics.tsv.xz

top-scihub-dois.txt: 2017-scihub-statistics.tsv
	touch top-scihub-dois.txt