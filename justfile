set shell := ["bash", "-c"]
exercise_py:
      rm -f sample_py.txt
      venv/bin/python reservoir.py test.txt 10000 > sample_py.txt

exercise_pl:
      rm -f sample_pl.txt
      perl reservoir.pl test.txt 10000 > sample_pl.txt

analyze_py:
      venv/bin/python analyze.py sample_py.txt

analyze_pl:
      venv/bin/python analyze.py sample_pl.txt

py: exercise_py analyze_py

pl: exercise_pl analyze_pl
