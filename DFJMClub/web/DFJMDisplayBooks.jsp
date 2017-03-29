<%-- 
    Document   : DFJMDisplayBooks
    Created on : Jan 25, 2017, 4:47:11 PM
    Author     : Derek Fusari, Jason Molnar
--%>

<jsp:include page="DFJMBanner.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
    <h2>
        List of Books
    </h2>
    <table>
        <tr>
            <th>Code</th>
            <th>Description</th>
            <th>Quantity</th>
        </tr>
        <c:forEach var="book" items="${books}"> 
            <tr>
                <td>
                    ${book.code}
                </td>
                <td>
                    ${book.description}
                </td>
                <td>
                    ${book.quantity}
                </td>  
            </tr>
        </c:forEach>
    </table>
   
    <input type="button" value="Add Book" onclick="openPage('DFJMAddBook.jsp')"/>
    <script type="text/javascript">
    function openPage(pageURL)
    {
    window.location.href = pageURL;
    }
</script>
</section>

<jsp:include page="DFJMFooter.jsp" />