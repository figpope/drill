To Build
--------
Run the following, replacing {{DRILL_VERSION}} with a valid version of the Apache Drill package (e.g. 1.11.0):
`docker build --build-arg DRILL_VERSION={{DRILL_VERSION}} -t celmatix/apache-drill:{{DRILL_VERSION}} .`

To Run
------
To run exposing the port for the webui, use:
`docker run -it --rm -p 8047:8047 -p 31010:31010 celmatix/apache-drill:{{DRILL_VERSION}}`

To Connect
----------
Follow the instructions at: https://drill.apache.org/docs/using-the-jdbc-driver/

For quick reference, the JDBC connection string is `jdbc:drill:drillbit=localhost:31010`

To Configure
------------
For example, to configure Drill with a Postgres database, navigate to the web interface at http://127.0.0.1:8047 and add the following JSON as a Storage Plugin. Once it's added, you should be able to query the database using the provided Storage Plugin name
```
{
  type: "jdbc",
  enabled: true,
  driver: "org.postgresql.Driver",
  url: "jdbc:postgresql://postgres/postgres",
  username: "postgres",
  password: "mysecretpassword"
}
```
