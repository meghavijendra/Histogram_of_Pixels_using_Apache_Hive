# PROJECT DESCRIPTION

Implementing the histogram of pixels program using <b>Apache Hive</b>. 

A pixel in an image can be represented using 3 colours: red, green, and blue, where each colour intensity is an integer between 0 and 255. This project has a Hive program that derives a histogram for each colour. 

For red, for example, the histogram will indicate how many pixels in the dataset have a green value equal to 0, equal to 1, etc (256 values). The pixel file is a text file that has one text line for each pixel.<br /> For example, the line<br />
23,140,45<br />
represents a pixel with red=23, green=140, and blue=45.<br />

To compile and run the project do the following steps: 
Every time you login, you need to execute these:<br />

export HIVE_HOME=$HOME/apache-hive-2.3.7-bin<br />
export HADOOP_HOME=$HOME/hadoop-2.6.5<br />
export PATH=$HIVE_HOME/bin:$PATH<br />
export HIVE_OPTS="--hiveconf mapreduce.framework.name=local --hiveconf fs.default.name=file://$HOME --hiveconf hive.metastore.warehouse.dir=file://$HOME/warehouse --hiveconf javax.jdo.option.ConnectionURL=jdbc:derby:;databaseName=/$HOME/metastore_db;create=true"<br /><br />

You also need to create an empty metastore database first (this must be done only once):<br />
cd<br />
rm -rf metastore_db  warehouse<br />
schematool -dbType derby -initSchema<br />

Then, to evaluate Hive commands interactively, do:<br />
Hive<br />

Navigate to the given directory and run it in local mode (after you setup your PATH) using:<br />
hive -f histogram.hql<br />
