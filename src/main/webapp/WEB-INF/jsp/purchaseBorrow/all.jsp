<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />

<style>
    .red-text {
        color: red;
    }
</style>

<div class="main-content app-content">
    <div class="my-4 mx-2">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card shadow-sm">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Borrowing List</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped mb-0">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Customer ID</th>
                                        <th>Amount</th>
                                        <th>Paid Amount</th>
                                        <th>Remaining Amount</th>
                                        <th>Payment Status</th>
                                        <th>Date</th>
                                        <th>Next Payment Status</th>
                                       <!--  <th>Pay</th>
                                        <th>Due Date</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:if test="${empty itemList}">
                                        <tr>
                                            <td colspan="9" class="text-center red-text">No pending bills</td>
                                        </tr>
                                    </c:if>
                                    <c:forEach var="bill" items="${itemList}">
                                        <tr>
                                            <td><a href="/purchaseborrow/details?id=${bill.id}" class="details">${bill.supplierId.name}</a></td>
                                            <td>${bill.amount}</td>
                                            <td>${bill.paidAmount}</td>
                                            <td>${bill.remainingAmount}</td>
                                            <td>${bill.payStatus}</td>
                                            <td>${bill.date}</td>
                                            <td>${bill.nextPaymentStatus}</td>
                                            <%-- <td>
                                                <a href="/borrow/pay?id=${bill.id}">
                                                    <i class="fas fa-credit-card" style="color: green;"></i>
                                                </a>
                                            </td> --%>
                                           
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
