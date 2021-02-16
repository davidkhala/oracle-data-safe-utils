set -e
local CMANCert=${1:CMAN.cert}
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))

# Find the distinguished name (DN) of the Connection Manager certificate from the client Connection Manager wallet
DN=$(oracle_cman_home/bin/orapki wallet display -wallet wallet/ | grep CN=ocid |  awk '{print $2}')
# Export the Connection Manager certificate 
oracle_cman_home/bin/orapki wallet export -wallet wallet/ -dn ${DN} -cert ${CMANCert}