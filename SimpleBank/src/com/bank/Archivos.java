package com.bank;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Archivos {
	
	public static void guardar(String transaccion) {
		
		try(FileWriter file = new FileWriter(new File(".\\Log.txt"), true);
			BufferedWriter escribir = new BufferedWriter(file);){
			escribir.write(transaccion+"\n");
			
		}catch(IOException IOE) {
			System.out.println(IOE.getMessage());
		}
	}
	
}
