#!/bin/sh
inputXMLPath=src/xml/assignment/site.xml
java -cp hw4.jar xml.assignment.TransformerXMLFile XML2XML src/xml/assignment/site2website.xsl $inputXMLPath website.xml
