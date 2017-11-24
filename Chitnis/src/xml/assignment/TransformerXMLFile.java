package xml.assignment;

import javax.xml.transform.*;
import javax.xml.transform.stream.*;
import java.io.*;

public class TransformerXMLFile {

	public static void main(String[] args) {

		String XSLFILE, XSLFILE2, INFILE, INFILE2, OUTFILE, OUTFILE2;
		if (args[0].equals("XML2XML")) {
			XSLFILE = args[1]; //"src/xml/assignment/site2website.xsl";
			INFILE = args[2]; //"src/xml/assignment/site.xml";
			OUTFILE = args[3]; //"src/xml/assignment/website.xml";
			StreamSource xslcode =
					new StreamSource(new File(XSLFILE));
			StreamSource input =
					new StreamSource(new File(INFILE));
			StreamResult output =
					new StreamResult(new File(OUTFILE));
			TransformerFactory tf =
					TransformerFactory
					.newInstance();

			Transformer trans;
			try {
				trans = tf.newTransformer(xslcode);
				trans.transform(input, output);
			} catch (TransformerConfigurationException e) {
				e.printStackTrace();
			} catch (TransformerException e) {
				e.printStackTrace();
			}
		} else if (args[0].equals("XML2HTML")) {
			XSLFILE2 = args[1]; //"src/xml/assignment/websiteXml2Html.xsl";
			INFILE2 = args[2]; //"src/xml/assignment/website.xml";
			OUTFILE2 = args[3]; //"src/xml/assignment/website.html";
			StreamSource xslcode2 =
					new StreamSource(new File(XSLFILE2));
			StreamSource input2 =
					new StreamSource(new File(INFILE2));
			StreamResult output2 =
					new StreamResult(new File(OUTFILE2));
			TransformerFactory tf =
					TransformerFactory
					.newInstance();

			Transformer trans;
			try {
				trans = tf.newTransformer(xslcode2);
				trans.transform(input2, output2);
			} catch (TransformerConfigurationException e) {
				e.printStackTrace();
			} catch (TransformerException e) {
				e.printStackTrace();
			}

		} else {
			System.out.println(args[0] + " is a wrong conversion parameter!!!");
		}



		

	}

}
