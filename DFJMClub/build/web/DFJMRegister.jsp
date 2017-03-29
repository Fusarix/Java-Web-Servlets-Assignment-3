<%-- 
    Document   : DFJMRegister
    Created on : Jan 25, 2017, 4:47:11 PM
    Author     : Derek Fusari, Jason Molnar
--%>

<jsp:include page="DFJMBanner.jsp" />

<section>
    <h1>New Member Registration Form</h1>
    <br>
    <form action="DFJMDisplayMember.jsp" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" style="width: 200" required><br>
        <label for="email">Email:</label>
        <input type="text" name="email" style="width: 300" required><br>
        <label for="phoneNum">Phone:</label>
        <input type="text" name="phoneNum" style="width: 100"><br>
        <label for="itProg">IT Program:</label>
        <select name="itProg">
            <option value="CAD">CAD</option>
            <option value="CP">CP</option>
            <option value="CPA">CPA</option>
            <option value="ITID">ITID</option>
            <option value="ITSS">ITSS</option>
            <option value="MSD">MSD</option>
            <option value="Other">Others</option>
        </select><br>
        <label for="yearLevel">Year Level:</label>
        <select name="year">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select><br>
        <button type="submit" style="margin-left: 120">Register Now!</button>
        <button type="reset">Reset</button>
    </form>
</section>

<jsp:include page="DFJMFooter.jsp" />