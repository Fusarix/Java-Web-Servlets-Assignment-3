<%-- 
    Document   : DFJMELoan
    Created on : Mar 15, 2017, 5:30:22 PM
    Author     : Jason, Derek
--%>
<jsp:include page="DFJMBanner.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
    <table>
        <tr>
            <th>Code</th>
            <th>Description</th>
            <th>QOH</th>
            <th>Action</th>
        </tr>
        <c:forEach var="item" items="${applicationScope.loanItems}"> 
            <tr>
                <td>
                    ${pageScope.item.code}
                </td>
                <td>
                    ${pageScope.item.description}
                </td>
                <td>
                    ${pageScope.item.quantity}
                </td>
                <td>
                    <c:choose>
                        <c:when test="${pageScope.item.quantity==0}">
                            N/A                       
                        </c:when>    
                        <c:otherwise>
                            <a href='<c:url value="DFJMCart?action=reserve&code=${pageScope.item.code}"/>'>Reserve</a>
                        </c:otherwise>
                    </c:choose>
                    
                </td>
            </tr>
        </c:forEach>
    </table>
</section>
<jsp:include page="DFJMFooter.jsp" />


