import sys
import random

# implement reservoir sampling of the input parameter
def reservoir_sample(filename):
    line = None
    with open(filename) as f:
        for count, current in enumerate(f, 1):
            if random.random() * count < 1:
                line = current
    return line

data_file_name, iterations = sys.argv[1:3]
random.seed()

# Run the algorithm repeatedly based on the script parameter
for _ in range(int(iterations)):
    print(reservoir_sample(data_file_name), end='')
