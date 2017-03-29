<%-- 
    Document   : DFJMECart
    Created on : 28-Mar-2017, 9:02:31 PM
    Author     : Derek, Jason
--%>

<jsp:include page="DFJMBanner.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<section>

    <h2 style="text-align: center">Your Loan Cart</h2>

    <table>
        <tr>
            <th>Code</th>
            <th>Description</th>
            <th>Quantity</th>       
        </tr>
        <c:set var="totalQty" scope="page" value="${0}"/>
        <c:forEach var="item" items="${sessionScope.cart.items}"> 
            <tr>
                <td>
                    ${pageScope.item.code}
                </td>
                <td>
                    ${pageScope.item.description}
                </td>
                <td style="text-align: right">
                    ${pageScope.item.quantity}
                    <c:set var="totalQty" scope="page" value ="${pageScope.item.quantity + totalQty}"/>
                </td>
            </tr>
            
        </c:forEach>
    </table>
    <br>
    <table>
        <tr style="text-align: right">
            Total: ${pageScope.totalQty}
        </tr>
    </table>
    <br>
    <a href="DFJMClearCart">Clear the Cart</a>
    <br>
    <a href="DFJMLoan">Return to eLoan</a>
</section>

<jsp:include page="DFJMFooter.jsp" />