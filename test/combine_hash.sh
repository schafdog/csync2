OS=$1
SOURCES_HASH=$2
CONFIG_HASH=$3
DEPS_HASH=$4
echo "build-${OS}-$(echo "${SOURCES_HASH}-${CONFIG_HASH}-${DEPS_HASH}" | sha256sum | cut -d' ' -f1 | head -c 16)"
