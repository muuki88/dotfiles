## Java Home
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PATH=$JAVA_HOME/bin:$PATH

#########################################
####             Eclipse             ####
#########################################

## Eclipse Home
export ECLIPSE_HOME=/home/muki/eclipse/eclipse

#########################################
####             Apache              ####
#########################################

## Play Home

export PLAY_HOME=/home/muki/Development/target_platform/typesafe/play-2.0
export PATH=$PLAY_HOME:$PATH

## SBT Home

#########################################
####             Apache              ####
#########################################

## Maven Home
export MAVEN_HOME=/home/muki/Development/target_platform/apache/apache-maven
export PATH=$MAVEN_HOME/bin:$PATH

## Apache Axis2 Home
export AXIS2_HOME=/home/muki/Development/target_platform/apache/axis2-1.6.2
# export PATH=$PATH:$AXIS2_HOME/bin

## Apache CFX Home
export CFX_HOME=/home/muki/Development/target_platform/apache/apache-cxf
export PATH=$PATH:$CFX_HOME/bin

## Apache Felix
export FELIX_HOME=/home/muki/Development/target_platform/apache/apache-felix
export PATH=$PATH:$FELIX_HOME/bin

## Apaceh Karaf
export KARAF_HOME=/home/muki/Development/target_platform/apache/apache-karaf
export PATH=$PATH:$KARAF_HOME/bin

#########################################
####             Build               ####
#########################################

## Sonytype Nexus OSS Home
export NEXUS_HOME=/home/muki/Development/target_platform/sonatype/nexus
export PATH=$PATH:$NEXUS_HOME/bin

## Tycho Version Sync
export TYCHO_VERSION_SYNC=/home/muki/Development/target_platform/mukis/tvs
export PATH=$PATH:$TYCHO_VERSION_SYNC

#########################################
####             Database            ####
#########################################

export H2_HOME=/home/muki/Development/target_platform/databases/h2
export PATH=$PATH:$H2_HOME/bin

export HSQLDB_HOME=/home/muki/Development/target_platform/databases/hsqldb
export PATH=$PATH:$HSQLDB_HOME/bin

export MONGO_HOME=/home/muki/Development/target_platform/databases/mongodb
export PATH=$PATH:$MONGO_HOME/bin
