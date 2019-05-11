package org.parser.crud;

import org.dom4j.DocumentException;

import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        try {
            Parser parser = new Parser("src/main/resources/database.xml");
            parser.read("//formula1/circuits");
            parser.createEngine("E_NEW", "Manufacter", "800", "160");
            parser.updateEngine("Ferrari", "BMW");
            parser.delete("//formula1/circuits/circuit[@id='AJP']");
            parser.sort("//formula1/drivers/driver");
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
