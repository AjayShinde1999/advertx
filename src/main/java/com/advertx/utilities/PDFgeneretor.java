package com.advertx.utilities;
import java.io.FileOutputStream;
import java.util.Date;

import org.springframework.stereotype.Component;

import com.advertx.entities.Billing;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Component
public class PDFgeneretor {
	BaseColor color1 = new BaseColor(233,150,122);
	BaseColor color = new BaseColor(255, 0, 0);
	Font font = new Font(Font.FontFamily.HELVETICA, 20, Font.BOLD);
	Font font1 = new Font(Font.FontFamily.HELVETICA, 15, Font.BOLD,color);
	
	
	
    public  void generatePDF(Billing save , String filepath) {
    	  Document document = new Document();
    	try {
    		
            PdfWriter.getInstance(document, new FileOutputStream(filepath));
            document.open();
            document.add(new Paragraph(new Date().toString()));
            
           // document.add(new Phrase("Contact Bill"));
            
            PdfPTable table = new PdfPTable(1);
            Phrase phrase = new Phrase("GENERATED BILL", font);
            PdfPCell cell = new PdfPCell(phrase);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
           
            cell.setBackgroundColor(color);
            table.addCell(cell);
            document.add(table);
           
          
            generateTable(document,  save);
           
            document.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    	 
        }
    private void generateTable(Document doc, Billing save) {
    	
    	
    	PdfPTable table = new PdfPTable(2);
    	
    	Phrase phrase = new Phrase("Invoice",font1);
    	PdfPCell cell = new PdfPCell(phrase);
    	cell.setHorizontalAlignment(Element.ALIGN_CENTER);
    	cell.setColspan(2);
    	table.addCell(cell);

       
  
    	 PdfPCell cell1 = new PdfPCell(new Paragraph(" FIRST NAME :-"));
         PdfPCell cell2 = new PdfPCell(new Paragraph(save.getFirstName()));
      //   PdfPCell cell3 = new PdfPCell(new Paragraph("MIDDLE NAME :-"));
      //   PdfPCell cell4 = new PdfPCell(new Paragraph(save.getMiddleName()));
         PdfPCell cell5 = new PdfPCell(new Paragraph("LAST NAME :-"));
         PdfPCell cell6 = new PdfPCell(new Paragraph(save.getLastName()));
         PdfPCell cell7 = new PdfPCell(new Paragraph("EMAIL ID :-"));
         PdfPCell cell8 = new PdfPCell(new Paragraph(save.getEmail()));
         PdfPCell cell9 = new PdfPCell(new Paragraph("Mobile Number :-"));
         PdfPCell cell10 = new PdfPCell(new Phrase(String.valueOf(save.getMobile())));
         PdfPCell cell11 = new PdfPCell(new Paragraph("PRODUCT :-"));
         PdfPCell cell12 = new PdfPCell(new Paragraph(save.getProduct()));
         PdfPCell cell13 = new PdfPCell(new Paragraph("Bill Amount :-"));
         PdfPCell cell14 = new PdfPCell(new Phrase(String.valueOf(save.getAmount())));

         
         table.addCell(cell1);
         table.addCell(cell2);
        // table.addCell(cell3);
        // table.addCell(cell4);
         table.addCell(cell5);
         table.addCell(cell6);
         table.addCell(cell7);
         table.addCell(cell8);
         table.addCell(cell9);
         table.addCell(cell10);
         table.addCell(cell11);
         table.addCell(cell12);
         table.addCell(cell13);
         table.addCell(cell14);
//    	 
//    	table.addCell(" FIRST NAME :-");
//    	table.addCell(billing.getFirstName());
//    	
//    	table.addCell("MIDDLE NAME :-");
//    	table.addCell(billing.getMiddleName());
//    	
//    	table.addCell("LAST NAME :-");
//    	table.addCell(billing.getLastName());
//    	
//    	table.addCell("EMAIL ID :-");
//    	table.addCell(billing.getEmailId());
//    	
////    	table.addCell("Contact Name :-");
   	//table.addCell(String.valueOf(save.getMobileNumber()));
//    	
//    	table.addCell("PRODUCT :-");
 // 	table.addCell(save.getProduct());
//    	
////    	table.addCell("Contact Name :-");
    ///	table.addCell(save.getAmount());
    	
    	try {
			doc.add(table);
		} catch (DocumentException e) {
		
			e.printStackTrace();
		}
    	
    }        
          
}

