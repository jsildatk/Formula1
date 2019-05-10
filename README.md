## VALIDATION
1) Validate XML: xmllint --noout database.xml
2) Valdiate XML against DTD: xmllint --noout --dtdvalid database.dtd database.xml
3) Validate XML against XSD: xmllint --noout --schema database.xsd database.xml