set shell := ["bash", "-c"]
sample:
      rm -f sample.txt
      for i in {1..10000}; do perl reservoir.pl < test.txt >> sample.txt; done

run:
      venv/bin/python analyze.py
