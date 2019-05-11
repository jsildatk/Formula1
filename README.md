# FORMULA1
XML project about Formula1 using DTD, XSD, XSLT, Java.
## VALIDATION
1) XML: ``` xmllint --noout database.xml ```
2) XML against DTD: ``` xmllint --noout --dtdvalid database.dtd database.xml ```
3) XML against XSD: ``` xmllint --noout --schema database.xsd database.xml ```
## TRANSFORMING USING XSLT
XML to HTML: ``` xsltproc database.xsl database.xml > database.html ```
## JAVA CRUD
Crud operations and sort on XML using DOM4J.
1) ``` mvn clean install ```
2) ``` mvn exec:java ```
