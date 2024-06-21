<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />

<div class="main-content app-content">
    <div class="container my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card shadow-sm">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Item List</h5>
                        <a href="/addProductForm" class="btn btn-primary btn-sm">New Item</a>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped mb-0">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Product Name</th>
                                        <th>Manufacture</th>
                                        <th>Item Type</th>
                                        <th>Packing</th>
                                        <th>Batch NO</th>
                                        <th>Godown</th>
                                        <th>Opening Stock</th>
                                        <th>Expiry Date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="item" items="${itemList}">
                                        <tr>
                                            <td><a href="details?id=${item.id}" class="details">${item.productName}</a></td>
                                            <td>${item.manuFacture.shortName}</td>
                                            <td>${item.itemType}</td>
                                            <td>${item.packing}</td>
                                            <td>${item.batchNo}</td>
                                            <td>${item.godown}</td>
                                            <td>${item.openingStock}</td>
                                            <td>${item.expiryDate}</td>
                                            <td>
                                                 <a href="/products/select-for-add-stock?id=${item.id}">
                                                  <i class="fas fa-plus"></i>
                                                </a>
                                                &nbsp; &nbsp;
                                                <a href="/products/select?id=${item.id}">
                                                    <i class="fas fa-pencil-alt"></i>
                                                </a>
                                                &nbsp; &nbsp;
                                                <a href="delete?id=${item.id}">
                                                    <i class="fas fa-trash"></i>
                                                </a>
                                                 
                                                
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <hr>
                  
                    <div class="card-footer border-top-0 text-end">
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../modules/footer.jsp" />
