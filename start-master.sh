#!/bin/bash
# export SPARK_MASTER_HOST=`hostname`
# . "/usr/share/spark/sbin/spark-config.sh"
# . "/usr/share/spark/bin/load-spark-env.sh"
mkdir -p $SPARK_MASTER_LOG
export SPARK_HOME=/usr/share/spark
# ln -sf /dev/stdout $SPARK_MASTER_LOG/spark-master.out
export PATH=$JAVA_HOME/bin:$PATH
echo "export PATH=$JAVA_HOME/bin:$PATH">>/etc/profile
export PATH=$HADOOP_HOME/bin:$PATH
echo "export PATH=$HADOOP_HOME/bin:$PATH">>/etc/profile
sh /usr/share/hadoop/sbin/start-dfs.sh
sh /usr/share/hadoop/sbin/start-yarn.sh
