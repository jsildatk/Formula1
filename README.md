## VALIDATION
1) XML: xmllint --noout database.xml
2) XML against DTD: xmllint --noout --dtdvalid database.dtd database.xml
3) XML against XSD: xmllint --noout --schema database.xsd database.xml
## TRANSFORMING USING XSLT
XML to HTML: xsltproc database.xsl database.xml > database.html