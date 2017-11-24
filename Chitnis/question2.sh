#!/bin/sh
inputXMLPath=src/xml/assignment/website.xml
java -cp hw4.jar xml.assignment.TransformerXMLFile XML2HTML src/xml/assignment/websiteXml2Html.xsl $inputXMLPath website.html
