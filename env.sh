export JAVA_DEBUG_OPTS="-Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n"

# export JAVA_OPTS='-XX:+HeapDumpOnOutOfMemoryError -Xmx4096M'
# export JAVA_OPTS='-XX:+HeapDumpOnOutOfMemoryError -Xmx2048M'
export JAVA_OPTS='-XX:+HeapDumpOnOutOfMemoryError -Xmx1024M'

MAIN_CLASS=org.commonjava.aprox.bind.vertx.boot.Booter
