#!/bin/sh
inputXMLPath=src/xml/assignment/site.xml
java -cp /home/rohan/eclipse-workspace/DB_HW4/hw4.jar xml.assignment.TransformerXMLFile XML2XML src/xml/assignment/site2website.xsl $inputXMLPath website.xml
