<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
                        <h5 class="card-title mb-0">Bill History for Bill ID: ${billId}</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped mb-0">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Sr. No.</th>
                                        <th>Online Payment</th>
                                        <th>Cash Payment</th>
                                        <th>Bill Date</th>
                                        <th> Next Payment Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${billHistoryList}" var="history" varStatus="status">
                                        <tr>
                                            <td>${status.index + 1}</td>
                                            <td>${history.online_Payment}</td>
                                            <td>${history.cash_Payment}</td>
                                            <td>${history.billDate}</td>
                                            <td>${history.nextPaymentStatus}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                              <a href="javascript:window.history.back();" class="btn btn-danger btn-sm" style="width: 75px;margin-left: 14px;">Cancel</a>
                    <div class="card-footer border-top-0 text-end"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../modules/footer.jsp" />
