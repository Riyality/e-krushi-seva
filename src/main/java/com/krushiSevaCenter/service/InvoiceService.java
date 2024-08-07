package com.krushiSevaCenter.service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Service
public class InvoiceService {

    public byte[] generateInvoice(Map<String, Object> data) throws DocumentException, IOException {
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream()) {
            Document document = new Document();
            PdfWriter.getInstance(document, baos);
            document.open();

            
            
            Font noteFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD, 12);
            Font headerFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD, 18);
            Font subHeaderFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD, 12);
            Font infoFont = FontFactory.getFont(FontFactory.HELVETICA, 10);
            Font marathiFont = FontFactory.getFont("Path/To/Marathi/Font.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED, 10); // Add correct path

           
            PdfPTable mainTable = new PdfPTable(1);
            mainTable.setWidthPercentage(100);
            mainTable.setSpacingBefore(10f);
            mainTable.setSpacingAfter(10f);
            mainTable.setHorizontalAlignment(Element.ALIGN_CENTER);

           
            PdfPCell mainCell = new PdfPCell();
            mainCell.setBorder(PdfPCell.BOX);
            mainCell.setPadding(10f);

            
            Paragraph note = new Paragraph("Subject to Sangola Jurisdiction", infoFont);
            note.setAlignment(Element.ALIGN_LEFT);
            mainCell.addElement(note);

           
            PdfPTable shopInfoTable = new PdfPTable(1);
            shopInfoTable.setWidthPercentage(100);
            shopInfoTable.setSpacingBefore(10f);
            shopInfoTable.setSpacingAfter(10f);
            shopInfoTable.setHorizontalAlignment(Element.ALIGN_CENTER);

            PdfPCell shopInfoCell = new PdfPCell();
            shopInfoCell.setBorder(PdfPCell.BOX);
            shopInfoCell.setHorizontalAlignment(Element.ALIGN_CENTER);
            shopInfoCell.setPaddingLeft(20f); 
            shopInfoCell.setPaddingRight(20f); 

            Paragraph shopName = new Paragraph("JIJAI KRUSHI KENDRA ,CHINCHOLI", headerFont);
            shopName.setAlignment(Element.ALIGN_CENTER);

            Paragraph address = new Paragraph("ADDRESS: CHINCHOLI, TAL: SANGOLA, DIST: SOLAPUR 413307", infoFont);
            address.setAlignment(Element.ALIGN_CENTER);

            Paragraph contact = new Paragraph("NANASO PUJARI, MOBILE NO: 9130604850, 8788117015", infoFont);
            contact.setAlignment(Element.ALIGN_CENTER);

            Paragraph email = new Paragraph("Email: jijaikrushikendra@gmail.com", infoFont);
            email.setAlignment(Element.ALIGN_CENTER);

            Paragraph gst = new Paragraph("GSTIN/UIN: 27CMGPP1764E1ZY", infoFont);
            gst.setAlignment(Element.ALIGN_CENTER);

            Paragraph dealerInfo = new Paragraph("Authorized Dealer of Agricultural Medicines, Fertilizers and B-Seeds, Chemicals", infoFont);
            dealerInfo.setAlignment(Element.ALIGN_CENTER);

            shopInfoCell.addElement(shopName);
            shopInfoCell.addElement(address);
            shopInfoCell.addElement(contact);
            shopInfoCell.addElement(email);
            shopInfoCell.addElement(gst);
            shopInfoCell.addElement(dealerInfo);

            shopInfoTable.addCell(shopInfoCell);

            mainCell.addElement(shopInfoTable);

           
            PdfPTable customerInfoTable = new PdfPTable(2);
            customerInfoTable.setWidthPercentage(100);
            customerInfoTable.setSpacingBefore(10f);
            customerInfoTable.setSpacingAfter(10f);

            PdfPCell customerInfoCell = new PdfPCell();
            customerInfoCell.setBorder(PdfPCell.NO_BORDER);
            customerInfoCell.addElement(new Paragraph("Customer Name: " + data.getOrDefault("customerName", ""), infoFont));
            customerInfoCell.addElement(new Paragraph("GST No: " + data.getOrDefault("gstNo", ""), infoFont));
            customerInfoCell.addElement(new Paragraph("Remaining Amount: " + data.getOrDefault("remainingAmount", ""), infoFont));
            customerInfoTable.addCell(customerInfoCell);

            PdfPCell billInfoCell = new PdfPCell();
            billInfoCell.setBorder(PdfPCell.NO_BORDER);
            billInfoCell.addElement(new Paragraph("Tax Invoice / Cash Memo", subHeaderFont));
            billInfoCell.addElement(new Paragraph("Bill No: " + data.getOrDefault("billNo", ""), infoFont));
            billInfoCell.addElement(new Paragraph("Bill Date: " + data.getOrDefault("billDate", ""), infoFont));
            customerInfoTable.addCell(billInfoCell);

            mainCell.addElement(customerInfoTable);

           
            PdfPTable productTable = new PdfPTable(9); // Increased number of columns to 9
            productTable.setWidthPercentage(100);
            productTable.setSpacingBefore(10f);
            productTable.setSpacingAfter(10f);

            String[] productHeaders = { "Sr. No", "Product Name", "GST %", "Batch No /Packing", "Expiry Date", "Quantity", "Net Amount", "Discount %", "Total Amount" }; // Added "Discount" header
            for (String header : productHeaders) {
                PdfPCell cell = new PdfPCell(new Phrase(header, subHeaderFont));
                cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell.setBorder(PdfPCell.BOX);
                productTable.addCell(cell);
            }

            List<Map<String, String>> products = (List<Map<String, String>>) data.get("products");
            for (Map<String, String> product : products) {
                productTable.addCell(createCell(product.getOrDefault("srNo", ""), infoFont));
                productTable.addCell(createCell(product.getOrDefault("itemName", ""), infoFont));
                productTable.addCell(createCell(product.getOrDefault("gst", ""), infoFont));
                productTable.addCell(createCell(product.getOrDefault("batchNo", ""), infoFont));
                productTable.addCell(createCell(product.getOrDefault("expiryDate", ""), infoFont));
                productTable.addCell(createCell(product.getOrDefault("quantity", ""), infoFont));
                productTable.addCell(createCell(product.getOrDefault("netAmount", ""), infoFont));
                productTable.addCell(createCell(product.getOrDefault("discount", ""), infoFont)); // Added discount cell
                productTable.addCell(createCell(product.getOrDefault("amount", ""), infoFont));
            }

            // Adding the total amount in the footer of the product table
            PdfPCell totalAmountCellLabel = new PdfPCell(new Phrase("Total Amount:", subHeaderFont));
            totalAmountCellLabel.setColspan(8);
            totalAmountCellLabel.setHorizontalAlignment(Element.ALIGN_RIGHT);
            totalAmountCellLabel.setBorder(PdfPCell.BOX);
            productTable.addCell(totalAmountCellLabel);

            NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(new Locale("en", "IN"));
            PdfPCell totalAmountCellValue = new PdfPCell(new Phrase(currencyFormatter.format(data.getOrDefault("totalAmount", 0)), subHeaderFont));
            totalAmountCellValue.setHorizontalAlignment(Element.ALIGN_RIGHT);
            totalAmountCellValue.setBorder(PdfPCell.BOX);
            productTable.addCell(totalAmountCellValue);

            mainCell.addElement(productTable);

            // Section 4: License and Bank Details
            PdfPTable footerTable = new PdfPTable(2);
            footerTable.setWidthPercentage(100);
            footerTable.setSpacingBefore(10f);
            footerTable.setSpacingAfter(10f);

            PdfPCell licenseInfoCell = new PdfPCell();
            licenseInfoCell.setBorder(PdfPCell.NO_BORDER);
            licenseInfoCell.addElement(new Paragraph("Fertilizer License No: 1234ASDFGVCZ123", infoFont));
            licenseInfoCell.addElement(new Paragraph("Seed License No: 12345ASDFGHBVCX", infoFont));
            licenseInfoCell.addElement(new Paragraph("Pesticide License No: 1234CSDVCBFGNHVCVB12", infoFont));
            footerTable.addCell(licenseInfoCell);

            PdfPCell bankInfoCell = new PdfPCell();
            bankInfoCell.setBorder(PdfPCell.NO_BORDER);
            bankInfoCell.addElement(new Paragraph("", infoFont));
            footerTable.addCell(bankInfoCell);

            mainCell.addElement(footerTable);

            // Terms and Conditions and Footer
            PdfPTable termsTable = new PdfPTable(2);
            termsTable.setWidthPercentage(100);

            PdfPCell termsCell = new PdfPCell(new Paragraph("Terms: All sales are final. No returns accepted.", infoFont));
            termsCell.setBorder(PdfPCell.NO_BORDER);
            termsTable.addCell(termsCell);

            PdfPCell footerCell = new PdfPCell(new Paragraph("FOR: JIJAI KRUSHI KENDRA, CHINCHOLI", infoFont));
            footerCell.setBorder(PdfPCell.NO_BORDER);
            footerCell.setHorizontalAlignment(Element.ALIGN_RIGHT);
            termsTable.addCell(footerCell);

            mainCell.addElement(termsTable);

           
            mainTable.addCell(mainCell);

           
            document.add(mainTable);

            document.close();
            return baos.toByteArray();
        }
    }
   

   
    private PdfPCell createCell(String content, Font font) {
        PdfPCell cell = new PdfPCell(new Phrase(content, font));
        cell.setBorder(PdfPCell.BOX);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        return cell;
    }
}
