dataSource {
    pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
    password = "Ferret55"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
} 

environments {
    development {
        dataSource {
            dbCreate = "create-drop"
	//		driverClassName = "com.mysql.jdbc.Driver"
	//		username = "root"
    //		password = "Ferret55"
	//      url = "jdbc:mysql://localhost:3306/test"			
            url = "jdbc:jtds:sqlserver://localhost:1433/sugarcrm"
			driverClassName = "net.sourceforge.jtds.jdbc.Driver"
			dialect = "org.hibernate.dialect.SQLServerDialect"	
			username = "sa"        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:jtds:sqlserver://localhost:1433/sugarcrm"
			driverClassName = "net.sourceforge.jtds.jdbc.Driver"
			dialect = "org.hibernate.dialect.SQLServerDialect"	
			username = "sa"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:jtds:sqlserver://CQPSQLC01:4653/sugarcrm"
			driverClassName = "net.sourceforge.jtds.jdbc.Driver"
			dialect = "org.hibernate.dialect.SQLServerDialect"	
			username = "schemaspy"
			password = "sspy"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}