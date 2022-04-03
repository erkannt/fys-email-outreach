2017-scihub-statistics.tsv:
	curl \
		-L \
		--output 2017-scihub-statistics.tsv.xz \
		https://github.com/greenelab/scihub/raw/master/download/scihub-logs-2017/2017.statistics.1016.j.tab.xz
	pixz -d 2017-scihub-statistics.tsv.xz

.only-doi-column.txt: 2017-scihub-statistics.tsv
	cat 2017-scihub-statistics.tsv | cut -f 2 > .only-doi-column.txt

top-scihub-dois.txt: .only-doi-column.txt
	sort .only-doi-column.txt | uniq --count | sort --numeric-sort --reverse > top-scihub-dois.txt
