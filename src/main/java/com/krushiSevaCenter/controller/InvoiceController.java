package com.krushiSevaCenter.controller;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

import com.krushiSevaCenter.service.InvoiceService;

@RestController
@RequestMapping("/generate-invoice")
public class InvoiceController {

    @Autowired
    private InvoiceService invoiceService;

    @PostMapping
    public ResponseEntity<StreamingResponseBody> generateInvoice(@RequestBody Map<String, Object> data) {
        try {
            byte[] pdfBytes = invoiceService.generateInvoice(data);
            StreamingResponseBody responseBody = outputStream -> outputStream.write(pdfBytes);

            HttpHeaders headers = new HttpHeaders();
            headers.set(HttpHeaders.CONTENT_TYPE, "application/pdf");
            headers.set(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=invoice.pdf");

            return new ResponseEntity<>(responseBody, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
}
