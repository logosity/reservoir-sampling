set shell := ["bash", "-c"]
sample:
      rm -f sample.txt
      for i in {1..10000}; do perl resevoir.pl < test.txt >> sample.txt; done
