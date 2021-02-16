# oracle-data-safe-utils
Oracle Data Safe utils


## Documentation
- https://docs.oracle.com/en/cloud/paas/data-safe/udscs/get-started-oracle-data-safe.html
- https://docs.oracle.com/en-us/iaas/data-safe/index.html

## Target DB
- Only PDB as target DB is supported
- Service Account for Oracle Data Safe should be a PDB local user, not CDB common user
   - `CDB$ROOT cannot be registered as a Target`
   - exception: if set `common_user_prefix` to something without special characters, or to null, then create a common user without special characters, and then this is common user can work as service account
### Type: Oracle Cloud Database

- Provide `ocid` of DB system or autonomous Database, not Database `ocid` like `ocid1.database`
    - ```
      Unable to connect to the database    
      Valid ocid format is ocid1.<resource type>.<realm>.<region>.<unique id> , 
      Specify ocid of DB system(e.g. ocid1.dbsystem.oc1.iad.abc) or autonomous Database(e.g. ocid1.autonomousdatabase.oc1.iad.abc)
      ```

### Type: Oracle Database on Compute
- [Provision](https://github.com/davidkhala/Oracle-Database-install-guide/blob/LTS/ocidb.md)

### Type: Oracle On-Premises Database
- option `connector-port`: Oracle Connection Manager listener port
- Setup TLS between On-Prem CMAN and target DB
   - Run CMANTLSDB.sh in on-prem connector root
