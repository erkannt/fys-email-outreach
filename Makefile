2017-scihub-statistics.tsv.xz:
	curl \
		-L \
		--output 2017-scihub-statistics.tsv.xz \
		https://github.com/greenelab/scihub/raw/master/download/scihub-logs-2017/2017.statistics.1016.j.tab.xz

top-scihub-dois.txt: 2017-scihub-statistics.tsv.xz 
	touch top-scihub-dois.txt