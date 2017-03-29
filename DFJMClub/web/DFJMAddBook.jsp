<%-- 
    Document   : DFJMAddBook
    Created on : 7-Mar-2017, 2:02:32 PM
    Author     : Derek, Jason Molnar
--%>

<jsp:include page="DFJMBanner.jsp" />

<section>
    <h1>Add Book</h1>
    <p style="color: red">${errMsg}</p><br>
    <form action="DFJMAddBook" method="post">
        <label for="code">Code:</label>
        <input type="text" name="code" style="width: 150"><br>

        <label for="description">Description:</label>
        <input type="text" name="description" style="width: 300"><br>

        <label for="quanity">Quantity:</label>
        <input type="text" name="quantity" style="width: 100"><br>

        <input type="submit" value="Save" class="margin_left">    
        <input type="submit" value="Cancel" onclick="form.action = 'DFJMDisplayBooks';">
    </form>

</section>

<jsp:include page="DFJMFooter.jsp" />
