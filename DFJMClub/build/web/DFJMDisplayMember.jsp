<%-- 
    Document   : DFJMDisplayMember
    Created on : Jan 25, 2017, 4:47:11 PM
    Author     : Derek Fusari, Jason Molnar
--%>

<jsp:include page="DFJMBanner.jsp" />

<section>
    <form action="DFJMRegister.jsp" method="POST">
    <h1>Thanks for joining our club!</h1>
    <br>
    <p>Here is the information you entered:</p>
    <table>
        <tr>
            <td><b>Full Name:</b></td>
            <td>${param.fullName}</td>
        </tr>
        <tr>
            <td><b>Email:</b></td>
            <td>${param.email}</td>
        </tr>
        <tr>
            <td><b>Full Name:</b></td>
            <td>${param.phoneNum}</td>
        </tr>
        <tr>
            <td><b>IT Program:</b></td>
            <td>${param.itProg}</td>
        </tr>
        <tr>
            <td><b>Year Level:</b></td>
            <td>${param.year}</td>
        </tr>
    </table>
    <p>To register another member, click on the Back button in your browser or the Return button shown below.</p>
    <button type="submit">Return</button>
    </form>
    
</section>

<jsp:include page="DFJMFooter.jsp" />