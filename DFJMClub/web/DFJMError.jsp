<%-- 
    Document   : DFJMError
    Created on : 7-Mar-2017, 8:42:47 PM
    Author     : Derek, Jason Molnar
--%>

<jsp:include page="DFJMBanner.jsp" />

<section>
    <h1>Java Error</h1>
    <p>Sorry, Java has thrown an exception.</p>
    <p>To continue, click the Back button.</p>

    <h2>Details</h2>
    <p>Type: ${pageContext.exception["class"]}</p>
    <p>Message: ${pageContext.exception.message}</p>

</section>

<jsp:include page="DFJMFooter.jsp" />