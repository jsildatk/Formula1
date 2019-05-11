package org.parser.crud;

import org.dom4j.*;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.*;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class Parser {
    private final SAXReader READER = new SAXReader();
    private Document document;

    public Parser(String url) throws DocumentException {
        this.document = this.READER.read(url);
    }

    public void read(String xPath) {
        List<Node> nodes = this.document.selectNodes(xPath);
        for (Node n : nodes) {
            Element e = (Element) n;
            System.out.println(this.getContent(e));
        }
    }

    public void createEngine(String engineId, String manufacter, String horsePower, String power) throws IOException {
        Node n = document.selectSingleNode("//formula1/engines"); // get root for engines
        Element root = (Element) n; // cast node to element
        Element engine = root.addElement("engine"); // create new engine
        Element m = engine.addElement("manufacter");
        Element ice = engine.addElement("ice");
        Element displacement = ice.addElement("displacement");
        Element cylinders = ice.addElement("cylinders");
        Element hp = ice.addElement("horse_power");
        Element mRpm = ice.addElement("max_rpm");
        Element hybrid = engine.addElement("hybrid");
        Element mguK = hybrid.addElement("mgu-k");
        Element p = mguK.addElement("power");
        Element mRpm1 = mguK.addElement("max_rpm");
        Element recoveredEnergy = mguK.addElement("recovered_energy");
        Element releasedEnergy = mguK.addElement("released_energy");
        Element mguH = hybrid.addElement("mgu-h");
        Element mRpm2 = mguH.addElement("max_rpm");
        Element recoveredEnergy1 = mguH.addElement("recovered_energy");
        engine.addAttribute("engine_id", engineId);
        m.setText(manufacter);
        displacement.setText("1.6 V6");
        cylinders.setText("6");
        hp.setText(horsePower);
        mRpm.setText("15000");
        p.addAttribute("energy_unit", "kW");
        p.setText("180");
        mRpm1.setText("50000");
        recoveredEnergy.addAttribute("energy_unit", "MJ");
        recoveredEnergy.setText("2");
        releasedEnergy.addAttribute("energy_unit", "MJ");
        releasedEnergy.setText("4");
        mRpm2.setText("1000000");
        recoveredEnergy1.setText("unlimited");
        save(); // save changes to xml
    }

    public void updateEngine(String oldManufacter, String newManufacter) throws IOException {
        Node node = this.document.selectSingleNode("//formula1/engines/engine[manufacter='" + oldManufacter + "']");
        Element engine = (Element) node;
        engine.element("manufacter").setText(newManufacter);
        save();
    }

    public void delete(String xPath) throws IOException {
        Node node = this.document.selectSingleNode(xPath);
        node.detach();
        save();
    }

    public void sort(String xPath) {
        List<Node> nodes = this.document.selectNodes(xPath);
        Collections.sort(nodes, (Node n1, Node n2)->n1.getStringValue().compareTo(n2.getStringValue()));
        for (Node n : nodes) {
            Element e = (Element) n;
            System.out.println(this.getContent(e));
        }
    }

    private void save() throws IOException {
        OutputFormat format = OutputFormat.createPrettyPrint();
        format.setEncoding("UTF-8");
        Writer writer = new OutputStreamWriter(new FileOutputStream(this.document.getName()));
        XMLWriter xmlWriter = new XMLWriter(writer, format);
        xmlWriter.write(this.document);
        xmlWriter.close();
    }

    private String getContent(Element element) {
        StringBuilder stringBuilder = new StringBuilder();
        for (Iterator<Element> i = element.elementIterator(); i.hasNext();) {
            Element e = i.next();
            stringBuilder.append(e.asXML());
        }
        stringBuilder.append("\n");
        return stringBuilder.toString();
    }
}
