set -eu pipefail

echo "Building"
docker build -t annekinmeyburgh/mey-lang . >&- 2>&-
echo "Running\n"
docker run -t annekinmeyburgh/mey-lang
