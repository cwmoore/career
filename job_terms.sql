CREATE DATABASE IF NOT EXISTS terms;
USE terms;

CREATE TABLE IF NOT EXISTS job_terms (
    id INT AUTO_INCREMENT PRIMARY KEY
    , `name` VARCHAR(1023)
    , `description` VARCHAR(1023)
    , `url` VARCHAR(1023)
    , `created` DATETIME DEFAULT NOW()
);

TRUNCATE TABLE job_terms;
INSERT INTO job_terms (name, description, url) VALUES
        , ('Python', 'Python', 'https://www.python.org')
        , ('Flask', 'Python micro web framework + extensions.', 'https://en.wikipedia.org/wiki/Flask_(web_framework)')
        , ('jinja2', 'Template engine.', 'https://en.wikipedia.org/wiki/Jinja_(template_engine)')
        , ('Django', 'Popular Python web framework.', 'https://www.djangoproject.com/')
        , ('Javascript', 'Javascript', 'https://en.wikipedia.org/wiki/JavaScript')
        , ('Backbone.js', 'Models and Views for JavaScript applications.', 'http://backbonejs.org/')
        , ('AngularJS', 'Version 2 of the popular framework.', 'https://en.wikipedia.org/wiki/AngularJS')
        , ('Angular', 'Javascript framework built by Google.', 'https://en.wikipedia.org/wiki/Angular_(application_platform)')
        , ('React', 'Library for rich user interfaces.', 'https://en.wikipedia.org/wiki/React_(JavaScript_library)')
        , ('Ember.js', 'MVVM framework.', 'https://en.wikipedia.org/wiki/Ember.js')
        , ('Knockout', 'MVVM framework.', 'https://en.wikipedia.org/wiki/Knockout_(web_framework)')
        , ('jQuery', 'Library to simplify scripting.', 'https://en.wikipedia.org/wiki/JQuery')
        , ('Redux', 'Action/State tree utilities for pure functions.', 'https://redux.js.org/')
        , ('Node.js', 'Command-line/server-side JavaScript runtime.', 'https://en.wikipedia.org/wiki/Node.js')
        , ('Flow static typing', 'Static type checker.', 'https://flow.org/')
        , ('ExpressJS', 'Web framework for node.js.', 'https://expressjs.com/')
        , ('PrimeNG', 'UI components for Angular.', 'https://www.primefaces.org/primeng/#/')
        , ('JavaScript/AJAX/Tiles', 'Grid-based layout templating language.', 'https://www.javascripting.com/view/tilesjs')
        , ('async/await', 'Asynchronous JS features.', 'https://javascript.info/async-await')
        , ('WASM', 'Standard for Assembly-like binaries in browser.', 'https://en.wikipedia.org/wiki/WebAssembly')
        , ('MEAN Stack', 'MongoDB, Express.js, Angular, Node.js', 'http://mean.io/')
        , ('Relay', 'Framework for React data applications with GraphQL.', 'https://facebook.github.io/relay/')
        , ('D3', 'Data visualization library.', 'https://d3js.org/')
        , ('Java', 'Java', 'https://www.java.com/en/download/faq/develop.xml')
        , ('Java EE', 'Enterprise Java Platform', 'https://en.wikipedia.org/wiki/Java_Platform,_Enterprise_Edition')
        , ('JAX-WS', 'JAX-WS', 'https://en.wikipedia.org/wiki/Java_API_for_XML_Web_Services')
        , ('JAXB', 'JAXB', 'https://en.wikipedia.org/wiki/Java_Architecture_for_XML_Binding')
        , ('JPA', 'JPA', 'https://en.wikipedia.org/wiki/Java_Persistence_API')
        , ('Spring Data', 'Spring Data', 'http://spring.io/projects/spring-data')
        , ('Google Guava', 'Google Guava', 'https://opensource.google.com/projects/guava')
        , ('Spring Framework/Core', 'Spring Framework/Core', 'https://en.wikipedia.org/wiki/Spring_Framework')
        , ('Spring Security', 'Spring Security', 'https://en.wikipedia.org/wiki/Spring_Security')
        , ('Spring Web Services', 'Spring Web Services', 'https://spring.io/projects/spring-ws')
        , ('SLF4J', 'Simple Logging Facades for Java', 'https://www.slf4j.org/', ('Spring Batch', 'Spring Batch', 'https://en.wikipedia.org/wiki/Spring_Batch')
        , ('Spring MVC', 'Spring MVC', 'https://docs.spring.io/spring/docs/current/spring-framework-reference/web.html')
        , ('Hibernate', 'Hibernate', 'https://en.wikipedia.org/wiki/Hibernate_(framework)')
        , ('JMS', 'JMS', 'https://en.wikipedia.org/wiki/Java_Message_Service')
        , ('Struts', 'Struts', 'https://struts.apache.org/birdseye.html')
        , ('Java Server Faces (JSF)', 'Java Server Faces (JSF)', 'https://en.wikipedia.org/wiki/JavaServer_Faces')
        , ('Drools Business Rules Engine', 'Drools Business Rules Engine', 'https://en.wikipedia.org/wiki/Drools')
        , ('Java data structures', 'Java data structures', 'https://www.geeksforgeeks.org/data-structures/')
        , ('caching', 'caching', 'https://crunchify.com/how-to-create-a-simple-in-memory-cache-in-java-lightweight-cache/')
        , ('multithreading', 'multithreading', 'https://www.tutorialspoint.com/java/java_multithreading.htm')
        , ('messaging', 'messaging', 'https://www.oracle.com/technetwork/articles/java/introjms-1577110.html')
        , ('asynchronous communication', 'asynchronous communication', 'https://www.foreach.be/blog/parallel-and-asynchronous-programming-in-java-8')
        , ('JEE MVC session facade', 'JEE MVC session facade', 'https://www.oracle.com/technetwork/java/sessionfacade-141285.html')
        , ('singleton', 'singleton', 'https://www.baeldung.com/java-singleton')
        , ('DAO', 'DAO', 'https://en.wikipedia.org/wiki/Data_access_object')
        , ('lambda syntax', 'lambda syntax', 'https://www.geeksforgeeks.org/lambda-expressions-java-8/')
        , ('streams', 'streams', 'https://www.geeksforgeeks.org/stream-in-java/')
        , ('JAX-RS RESTful', 'JAX-RS RESTful', 'https://en.wikipedia.org/wiki/Java_API_for_RESTful_Web_Services')
        , ('Databases', 'Databases', 'https://en.wikipedia.org/wiki/Relational_database')
        , ('Redis', 'Redis', 'https://en.wikipedia.org/wiki/Redis')
        , ('DB2', 'DB2', 'https://en.wikipedia.org/wiki/IBM_Db2')
        , ('MongoDB', 'MongoDB', 'https://en.wikipedia.org/wiki/MongoDB')
        , ('PostgreSQL', 'PostgreSQL', 'https://www.postgresql.org/')
        , ('Cassandra DB', 'Cassandra DB', 'https://en.wikipedia.org/wiki/Apache_Cassandra')
        , ('Terracotta', 'Terracotta', 'https://en.wikipedia.org/wiki/Terracotta,_Inc.')
        , ('Prometheus', 'Prometheus', 'https://prometheus.io/')
        , ('MarkLogic', 'MarkLogic', 'https://en.wikipedia.org/wiki/MarkLogic')
        , ('IndexedDB', 'IndexedDB', 'https://developers.google.com/web/ilt/pwa/working-with-indexeddb')
        , ('Amazon AWS', 'Amazon Web Services AWS', 'https://en.wikipedia.org/wiki/Amazon_Web_Services')
        , ('EC2 - Elastic Compute Cloud', 'Scalable compute instances', 'https://en.wikipedia.org/wiki/Amazon_Elastic_Compute_Cloud')
        , ('S3 - Simple Storage Service', 'S3 - Simple Storage Service', 'https://en.wikipedia.org/wiki/Amazon_S3')
        , ('Cloudfront', 'Cloudfront', 'https://en.wikipedia.org/wiki/Amazon_CloudFront')
        , ('Cloudwatch', 'Cloudwatch', 'https://aws.amazon.com/cloudwatch/')
        , ('VPC', 'VPC', 'https://en.wikipedia.org/wiki/Virtual_private_cloud')
        , ('RDS', 'RDS', 'https://aws.amazon.com/rds/')
        , ('Cloudsearch', 'Cloudsearch', 'https://aws.amazon.com/cloudsearch/')
        , ('DynamoDB', 'DynamoDB', 'https://aws.amazon.com/dynamodb/')
        , ('Kinesis', 'Kinesis', 'https://aws.amazon.com/kinesis/')
        , ('Lambda', 'Lambda', 'https://aws.amazon.com/lambda/')
        , ('ElasticSearch', 'ElasticSearch', 'https://en.wikipedia.org/wiki/Elasticsearch')
        , ('Logstash', 'Logstash', 'https://www.elastic.co/products/logstash')
        , ('Kibana', 'Kibana', 'https://www.elastic.co/products/kibana')
        , ('Redshift', 'Redshift', 'https://aws.amazon.com/redshift/')
        , ('SQS', 'SQS', 'https://en.wikipedia.org/wiki/Amazon_Simple_Queue_Service')
        , ('Machine Learning', 'Machine Learning', 'https://en.wikipedia.org/wiki/Machine_learning')
        , ('MXNet', 'Deep-learning library.', 'https://mxnet.apache.org/')
        , ('TensorFlow', 'Symbolic math library used for machine learning and neural networks.', 'https://en.wikipedia.org/wiki/TensorFlow')
        , ('Keras', 'High-level neural networks API.', 'https://keras.io/')
        , ('Bootstrap or Foundations', 'Front-end frameworks (HTML, CSS, JS)', 'https://www.upwork.com/hiring/development/bootstrap-vs-foundation-which-framework-is-right-for-you/')
        , ('Handlebars', 'Templating system.', 'https://handlebarsjs.com/')
        , ('Moustache', 'Templating system.', 'https://mustache.github.io/')
        , ('SASS/LESS', 'CSS pre-processors.', 'https://www.keycdn.com/blog/sass-vs-less')
        , ('Build/CI/CD/Config', 'Build/CI/CD/Config', 'https://en.wikipedia.org/wiki/List_of_build_automation_software')
        , ('continuous integration, continuous delivery, configuration', 'continuous integration, continuous delivery, configuration', 'https://en.wikipedia.org/wiki/Comparison_of_continuous_integration_software')
        , ('dev-ops', 'Dev-OPS', 'https://about.gitlab.com/devops-tools/')
        , ('Maven', 'Manage build, reporting, and documentation.', 'https://maven.apache.org/')
        , ('Ant', 'Compile, assemble, test, and run applications.', 'https://ant.apache.org/', 'https://github.com/apache/ant-antlibs-common')
        , ('Gradle', 'Build tool using Groovy-based DSL.', 'https://en.wikipedia.org/wiki/Gradle')
        , ('Jenkins', 'Open source automation server for CI and CD.', 'https://en.wikipedia.org/wiki/Jenkins_(software)')
        , ('Grunt', 'JavaScript task runner w/plugins.', 'https://en.wikipedia.org/wiki/Grunt_(software)')
        , ('Bamboo', 'CI/CD server by Atlassian.', 'https://en.wikipedia.org/wiki/Bamboo_(software)')
        , ('Buildbot', 'CI framework in Python.', 'https://buildbot.net/')
        , ('Gulp', 'Taskrunner for JavaScript web development automation.', 'https://en.wikipedia.org/wiki/Gulp.js')
        , ('Brunch', 'Compact config build automation.', 'https://brunch.io/')
        , ('WebPack', 'Web application module bundler.', 'https://en.wikipedia.org/wiki/Webpack')
        /*, , 'https://webpack.js.org/'*/
        ('Babel', 'Babel', 'https://babeljs.io/')
        , ('Travis CI', 'Travis CI', 'https://en.wikipedia.org/wiki/Travis_CI')
        , ('GitLab', 'GitLab', 'https://about.gitlab.com/')
        , ('Ansible', 'Ansible', 'https://en.wikipedia.org/wiki/Ansible_(software)')
        , ('Puppet', 'Puppet', 'https://en.wikipedia.org/wiki/Puppet_(software)')
        , ('Chef', 'Chef', 'https://en.wikipedia.org/wiki/Chef_(software)')
        , ('IDEs', 'IDEs', 'https://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments')
        , ('text editors', 'Programming text editors for source code.', 'https://en.wikipedia.org/wiki/Comparison_of_text_editors')
        , ('Eclipse', 'Eclipse', 'https://en.wikipedia.org/wiki/Eclipse_(software)')
        , ('IntelliJ', 'IntelliJ', 'https://en.wikipedia.org/wiki/IntelliJ_IDEA')
        , ('UltraEdit', 'UltraEdit', 'https://en.wikipedia.org/wiki/UltraEdit')
        , ('Servlet Containers/Servers', 'Servlet Containers/Servers', 'https://en.wikipedia.org/wiki/Comparison_of_web_server_software')
        , ('Tomcat', 'Tomcat', 'https://en.wikipedia.org/wiki/Apache_Tomcat')
        , ('Glassfish', 'Glassfish', 'https://en.wikipedia.org/wiki/GlassFish')
        , ('WebLogic', 'WebLogic', 'https://en.wikipedia.org/wiki/Oracle_WebLogic_Server')
        , ('JBoss', 'JBoss', 'https://en.wikipedia.org/wiki/JBoss_Enterprise_Application_Platform')
        , ('WildFly', 'WildFly', 'https://en.wikipedia.org/wiki/WildFly')
        , ('Jetty', 'Jetty', 'https://en.wikipedia.org/wiki/Jetty_(web_server)')
        , ('Resin', 'Resin', 'https://en.wikipedia.org/wiki/Resin_(software)')
        , ('Docker', 'App containers.', 'https://www.docker.com/', 'https://en.wikipedia.org/wiki/Docker_(software)')
        /*, 'https://acadgild.com/blog/what-is-docker-container-an-introduction')*/
        , ('Kubernetes', 'Container orchestration.', 'https://en.wikipedia.org/wiki/Kubernetes')
        /*, 'https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/')*/
        , ('Firebase', 'Google\'s mobile app development platform.', 'https://firebase.google.com/')
        , ('Heroku', 'Managed cloud containers and ecosystem.', 'https://www.heroku.com/', 'https://en.wikipedia.org/wiki/Heroku')
        , ('Version Control Systems', 'Version Control Systems', 'https://en.wikipedia.org/wiki/Comparison_of_version_control_software')
        , ('git', 'Open-source distributed version control system.', 'https://en.wikipedia.org/wiki/Git')
        /*, 'https://git-scm.com/'*/
        , ('Subversion', 'Subversion', 'https://en.wikipedia.org/wiki/Apache_Subversion')
        , ('Nexus', 'Nexus', 'https://www.sonatype.com/nexus-repository-sonatype')
        , ('Mercurial', 'https://en.wikipedia.org/wiki/Mercurial', 'https://www.mercurial-scm.org/')
        , ('Automated Testing/Monitoring/Etc.', 'Automated Testing/Monitoring/Etc.', 'https://en.wikipedia.org/wiki/Test_automation')
        , ('Mocha', 'Mocha', 'https://mochajs.org/')
        , ('Jasmine', 'Jasmine JavaScript testing framework', 'https://en.wikipedia.org/wiki/Jasmine_(JavaScript_testing_framework)')
        /*, 'https://github.com/jasmine/jasmine'*/
        , ('Karma', 'Karma', 'http://karma-runner.github.io/3.0/intro/how-it-works.html')
        , ('Grafana', 'Grafana', 'https://grafana.com/')
        , ('Jest', 'Jest', 'https://jestjs.io/')
        , ('Enzyme', 'Enzyme', 'https://github.com/airbnb/enzyme')
        , ('Junit', 'Junit', 'https://junit.org/junit5/')
        , ('EasyMock', 'http://easymock.org/', 'https://www.baeldung.com/easymock', ('Selenium', 'Selenium', 'https://www.seleniumhq.org/')
        , ('Cucumber', 'Cucumber', 'https://cucumber.io/')
        , ('JProbe', 'JProbe', 'http://www.javaperformancetuning.com/tools/jprobe/')
        , ('Mockito', 'Mockito', 'https://en.wikipedia.org/wiki/Mockito')
        , ('PM2', 'Production process manager.', 'http://pm2.keymetrics.io/')
        , ('Rational Unified Process (RUP)', 'Rational Unified Process (RUP)', 'https://en.wikipedia.org/wiki/Rational_Unified_Process')
        , ('Scrum', 'Scrum', 'https://www.scrumguides.org/scrum-guide.html')
        , ('Kanban', 'Kanban', 'https://en.wikipedia.org/wiki/Kanban')
        , ('Lean', 'Lean', 'https://en.wikipedia.org/wiki/Lean_software_development')
        , ('Extreme Programming (XP)', 'Extreme Programming (XP)', 'https://en.wikipedia.org/wiki/Extreme_programming')
        , ('Feature driven development (FDD)', 'Feature driven development (FDD)', 'https://en.wikipedia.org/wiki/Feature-driven_development')
        , ('Project Management', 'Project Management', '')
        , ('JIRA/Confluence', 'JIRA/Confluence', 'https://www.atlassian.com/software/confluence/jira-integration')
        , ('Job Queueing/Streaming/Throughput', 'Job Queueing/Streaming/Throughput', '')
        , ('RabbitMQ', 'RabbitMQ', 'https://en.wikipedia.org/wiki/RabbitMQ')
        , ('ZeroMQ', 'ZeroMQ', 'https://en.wikipedia.org/wiki/ZeroMQ')
        , ('Apache ActiveMQ', 'Apache ActiveMQ', 'https://en.wikipedia.org/wiki/Apache_ActiveMQ')
        , ('Apache Kafka', 'Apache Kafka', 'https://en.wikipedia.org/wiki/Apache_Kafka')
        , ('Celery', 'Celery', 'http://www.celeryproject.org/')
        , ('Memcache', 'Memcache', 'https://en.wikipedia.org/wiki/Memcached')
        , ('Search', 'Search', '')
        , ('SOLR', 'SOLR', 'http://lucene.apache.org/solr/')
        , ('Lucene', 'Lucene', 'https://en.wikipedia.org/wiki/Apache_Lucene')
        , ('Encryption/Cryptography/Security', 'Encryption/Cryptography/Security', '')
        , ('PKI', 'PKI', 'https://en.wikipedia.org/wiki/Public_key_infrastructure')
        , ('RSA', 'RSA', 'https://en.wikipedia.org/wiki/RSA_(cryptosystem)')
        , ('ECC', 'ECC', 'https://en.wikipedia.org/wiki/Elliptic-curve_cryptography')
        , ('PGP', 'PGP', 'https://en.wikipedia.org/wiki/Pretty_Good_Privacy')
        , ('blockchain', 'blockchain', 'https://en.wikipedia.org/wiki/Blockchain')
        , ('OAuth token lifecycle', 'OAuth token lifecycle', 'https://www.oauth.com/oauth2-servers/access-tokens/access-token-lifetime/')
        , ('OpenID Connect', 'OpenID Connect', 'https://openid.net/connect/')
        , ('policy-based security', 'policy-based security', 'http://ibmsystemsmag.com/ibmi/administrator/security/the-benefits-of-a-policy-based-security-approach/')
        , ('UAC', 'UAC', 'https://en.wikipedia.org/wiki/User_Account_Control')
        , ('FIPS compliance', 'FIPS compliance', 'https://en.wikipedia.org/wiki/FIPS_140-2')
        , ('Single Sign-on', 'Single Sign-on', 'https://en.wikipedia.org/wiki/Single_sign-on')
        , ('Active Directory', 'Active Directory', 'https://en.wikipedia.org/wiki/Active_Directory')
        , ('ADAL', 'ADAL', 'https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-authentication-libraries')
        , ('XSS', 'XSS', 'https://en.wikipedia.org/wiki/Cross-site_scripting')
        , ('SQL Injection', 'SQL Injection', 'https://en.wikipedia.org/wiki/SQL_injection')
        , ('CORS', 'CORS', 'https://en.wikipedia.org/wiki/Cross-origin_resource_sharing')
        , ('CSRF', 'CSRF', 'https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)')
        /*, 'https://en.wikipedia.org/wiki/Cross-site_request_forgery'*/
        , ('Shiro', 'Shiro', 'https://en.wikipedia.org/wiki/Apache_Shiro')
        , ('OWASP Top Ten', 'OWASP Top Ten', 'https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project')
        /*, 'https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf')*/
        , ('Application Perfomance Management (APM)', 'Application Perfomance Management (APM)', '')
        , ('Dynatrace', 'Dynatrace', 'https://en.wikipedia.org/wiki/Dynatrace')
        , ('Splunk', 'Splunk', 'https://en.wikipedia.org/wiki/Splunk')
        , ('BigData/Clusters/Distributed Compute', 'BigData/Clusters/Distributed Compute', '')
        , ('Spark/Spark2', 'Spark/Spark2', 'https://spark.apache.org/')
        , ('Hive', 'Hive', 'https://hive.apache.org/')
        , ('Snowflake', 'Snowflake', 'https://www.snowflake.com/')
        , ('Boost', 'Boost', 'https://www.boost.org/users/')
        , ('HDF-5', 'HDF-5', 'https://support.hdfgroup.org/HDF5/whatishdf5.html')
        , ('h5py', 'h5py', 'https://www.h5py.org/')
        , ('scipy', 'scipy', 'https://www.scipy.org/')
        /*, 'https://en.wikipedia.org/wiki/SciPy'*/
        , ('Hadoop', 'Hadoop', 'https://hadoop.apache.org/')
        /*, 'https://en.wikipedia.org/wiki/Apache_Hadoop'*/
        , ('HDFS', 'HDFS', 'https://hadoop.apache.org/docs/r1.2.1/hdfs_design.html')
        , ('HBase', 'HBase', 'https://en.wikipedia.org/wiki/Apache_HBase')
        , ('Business Intelligence', 'Business Intelligence', '')
        , ('Alteryx', 'Alteryx', 'https://en.wikipedia.org/wiki/Alteryx')
        , ('Tableau', 'Tableau', 'https://www.tableau.com/')
        , ('Oracle R', 'Oracle R', 'https://blogs.oracle.com/r/what-is-r')
        , ('SAP Business Objects', 'SAP Business Objects', 'https://www.sap.com/products/bi-platform.html')
        , ('SAS', 'SAS', 'https://en.wikipedia.org/wiki/SAS_(software)')
        , ('Collaboration', 'Collaboration', '')
        , ('MS SharePoint', 'MS SharePoint', 'https://en.wikipedia.org/wiki/SharePoint')
        , ('XML', 'XML', '')
        , ('SOAP', 'SOAP', 'https://en.wikipedia.org/wiki/SOAP')
        , ('XQuery', 'XQuery', 'https://en.wikipedia.org/wiki/XQuery')
        , ('XPath', 'XPath', 'https://en.wikipedia.org/wiki/XPath')
        , ('Networks', 'Networks', '')
        , ('SNMP', 'SNMP', 'https://en.wikipedia.org/wiki/Simple_Network_Management_Protocol')
        , ('SSH', 'SSH', 'https://en.wikipedia.org/wiki/Secure_Shell')
        , ('Telnet', 'Telnet', 'https://en.wikipedia.org/wiki/Telnet')
        , ('DOCSIS', 'DOCSIS', 'https://en.wikipedia.org/wiki/DOCSIS')
        , ('DSL', 'DSL', 'https://en.wikipedia.org/wiki/Digital_subscriber_line')
        , ('Fiber', 'Fiber', 'https://en.wikipedia.org/wiki/Fiber-optic_communication')
        , ('WiFi', 'WiFi', 'https://en.wikipedia.org/wiki/Wi-Fi')
        , ('BlueTooth', 'BlueTooth', 'https://en.wikipedia.org/wiki/Bluetooth')
        , ('ZigBee', 'ZigBee', 'https://en.wikipedia.org/wiki/Zigbee')
        , ('Z-Wave', 'Z-Wave', 'https://en.wikipedia.org/wiki/Z-Wave')
        , ('Business Modeling', 'Business Modeling', '')
        , ('BPMN', 'BPMN', 'https://en.wikipedia.org/wiki/Business_Process_Model_and_Notation')
        , ('DMN', 'DMN', 'https://en.wikipedia.org/wiki/Decision_Model_and_Notation')
        , ('CMMN', 'CMMN', 'https://en.wikipedia.org/wiki/CMMN')
        , ('Activiti', 'Activiti', 'https://www.activiti.org/')
        /*, 'https://en.wikipedia.org/wiki/Activiti_(software)'*/
        , ('Bonitasoft', 'Bonitasoft', 'https://en.wikipedia.org/wiki/Bonita_BPM')
        /*, 'https://www.bonitasoft.com/')*/
        /*, ('http://www.thoughtfulprogrammer.com/2010/05/tale-of-two-open-bpm-approaches.html'*/
        , ('PDLC', 'PDLC', 'https://en.wikipedia.org/wiki/Product_life-cycle_management_(marketing)')
        , ('SDLC', 'SDLC', 'https://en.wikipedia.org/wiki/Software_development_process')
        , ('BPM', 'BPM', 'https://en.wikipedia.org/wiki/Business_process_management')
        /*, 'https://en.wikipedia.org/wiki/Business_process_modeling')*/
        , ('GIS/Geospatial', 'GIS/Geospatial', '')
        , ('GeoSpatial', 'GeoSpatial', 'https://www.gislounge.com/difference-gis-geospatial/')
        , ('OGC', 'OGC', 'http://www.opengeospatial.org/')
        , ('WMS', 'WMS', 'https://en.wikipedia.org/wiki/Web_Map_Service')
        , ('WMTS', 'WMTS', 'https://en.wikipedia.org/wiki/Web_Map_Tile_Service')
        , ('WFS', 'WFS', 'https://en.wikipedia.org/wiki/Web_Feature_Service')
        , ('SOS', 'SOS', 'https://en.wikipedia.org/wiki/Sensor_Observation_Service')
        , ('3D', '3D', '')
        , ('OpenGL', 'OpenGL', 'https://en.wikipedia.org/wiki/OpenGL')
        , ('Direct3D', 'Direct3D', 'https://en.wikipedia.org/wiki/Direct3D')
        , ('PS4/GNM', 'PS4/GNM', 'https://en.wikipedia.org/wiki/PlayStation_4_system_software#System')
        , ('Vulkan API', 'Vulkan API', 'https://en.wikipedia.org/wiki/Vulkan_(API)')
        , ('HLSL', 'HLSL', 'https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl')
        , ('GLSL', 'GLSL', 'https://en.wikipedia.org/wiki/OpenGL_Shading_Language')
        , ('CAD PLM integration', 'CAD PLM integration', 'https://www.gerbertechnology.com/fr-fr/actualit%C3%A9/the-competitive-advantages-of-cad-plm-integration/')
        , ('WebSphere Transformation Extender (Mercatur)', 'WebSphere Transformation Extender (Mercatur)', 'https://www.ibm.com/software/integration/wdatastagetx/editions.html')
        , ('Cg', 'Cg', 'https://en.wikipedia.org/wiki/Cg_(programming_language)')
        , ('Scala', 'Scala', 'https://www.scala-lang.org/')
        , ('Elixir', 'functional programming language running on Erlang', 'https://en.wikipedia.org/wiki/Elixir_(programming_language)')
        , ('Shopify', 'Shopify', 'https://www.shopify.com/')
        , ('GraphQL', 'GraphQL', 'https://en.wikipedia.org/wiki/GraphQL')
        /*'https://graphql.org/'*/
        , ('Apollo', 'Apollo', 'https://www.apollographql.com/')
        , ('SOA/microservices', 'SOA/microservices', 'https://www.bmc.com/blogs/microservices-vs-soa-whats-difference/')
        , ('RAML', 'RAML', 'https://en.wikipedia.org/wiki/RAML_(software)')
        /*, 'https://raml.org/index.html'*/
        , ('Documaker', 'Documaker', 'https://www.oracle.com/applications/documaker/')
        , ('Scaled Agile Framework SAFe', 'Scaled Agile Framework SAFe', 'https://www.scaledagileframework.com/')
        , ('ERP', 'ERP', 'https://en.wikipedia.org/wiki/Enterprise_resource_planning')
        , ('Sinatra', 'Sinatra', 'https://en.wikipedia.org/wiki/Sinatra_(software)')
        /*, 'http://sinatrarb.com/intro.html'*/
        , ('Sidekiq', 'Sidekiq', 'https://en.wikipedia.org/wiki/Sidekiq')
        /*, 'https://sidekiq.org/'*/
        , ('Jamboard', 'Jamboard', 'https://gsuite.google.com/products/jamboard/')
        , ('ServiceWorkers', 'ServiceWorkers', 'https://developers.google.com/web/fundamentals/primers/service-workers/')
        , ('LinQ for SQL', 'LinQ for SQL', 'https://msdn.microsoft.com/en-us/library/bb308959.aspx')
        , ('SSRS reporting', 'SSRS reporting', 'https://en.wikipedia.org/wiki/SQL_Server_Reporting_Services')
        , ('Netsuite', 'Netsuite', 'https://en.wikipedia.org/wiki/NetSuite')
        , ('Dynamics', 'Dynamics', 'https://en.wikipedia.org/wiki/Microsoft_Dynamics')
        , ('SAP', 'SAP', 'https://en.wikipedia.org/wiki/SAP_SE')
        , ('OpenAPI', 'OpenAPI', 'https://en.wikipedia.org/wiki/OpenAPI_Specification')
;
