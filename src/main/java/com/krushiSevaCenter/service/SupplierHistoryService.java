package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.krushiSevaCenter.dao.ProductDao;
import com.krushiSevaCenter.dao.PurchaseBillDao;
import com.krushiSevaCenter.dao.SupplierHistoryDao;
import com.krushiSevaCenter.dto.SupplierRequestDto;
import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.entity.PurchaseBill;
import com.krushiSevaCenter.entity.SupplierHistory;

@Service
@Transactional
public class SupplierHistoryService {

    @Autowired
    private PurchaseBillDao purchaseBillDao;

    @Autowired
    private SupplierHistoryDao supplierHistoryDao;
    
    @Autowired
    private ProductDao productDao;

    public void addBill(SupplierRequestDto dto) {
        PurchaseBill purchaseBill = dto.getPurchaseBill();
        if (purchaseBill == null) {
            throw new IllegalArgumentException("PurchaseBill cannot be null");
        }

        PurchaseBill addedBill = purchaseBillDao.save(purchaseBill);

        List<SupplierHistory> supplierHistoryList = dto.getSupplierHistory();
        for (SupplierHistory history : supplierHistoryList) {
            history.setPurchaseId(addedBill);
        }
        supplierHistoryDao.saveAll(supplierHistoryList);

        for (SupplierHistory history : supplierHistoryList) {
            Long productId = history.getProductId();
            Optional<Product> optionalProduct = productDao.findById(productId);

            if (optionalProduct.isPresent()) {
                Product product = optionalProduct.get();
                long newStock = product.getOpeningStock() + history.getQuantity();
                product.setOpeningStock(newStock);
                productDao.save(product);
            }
        }
    }
}
