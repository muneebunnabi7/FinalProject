<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
           <h3> NGO REGISTRATION DETAILS</h3>
         <form action="ngoregister">
         NGO NAME:<input type="text" name="ngoname"><br>
     Country: <select name=ngocountry>
     <option value="India">India</option>
     <option value="Srilanka">Pakistan</option>
     <option value="Nipal">Nipal</option>
     </select><br>
     State: <select name=ngostate>
     <option value="Kashmir">Kashmir</option>
     <option value="West Bengal">West Bengal</option>
     <option value="Andrha">Andrha</option>
     <option value="Maharashtra">Maharashtra</option>
     </select> <br>
     State: <select name=ngocity>
     <option value="Anantnag">Anantnag</option>
     <option value="Srinagar">Srinagar</option>
     <option value="Sopore">Sopore</option>
     <option value="Pulwama">Pulwama</option>
     </select><br> 
      Pincode: <input type="tel" name="pincode"><br>
      NGO Mobile: <input type="tel" name="ngophone"><br>
      NGO Email: <input type="text" name="ngoemail">
       
      <h3>NGO Bank Details</h3>
      Bank Name: <input type="text" name="bname"><br>
      Branch Name:<input type="text" name="branchname"><br>
      Account Type:<input type="text" name="acctype"><br>
      Account number:<input type="tel" name="accnum"><br>
      Ifsc Code:<input type="text" name="ifsc"><br>
        
      <h3>NGO Documnet list</h3>
         Attested Copies of Audited Statement of Accounts(Balance Sheet) of preceding three years: <input type="file" name="balancesheet"><br>
         Proof of Experience <input type="file" name="proofexp"><br>
         Annual Report: <input type="file" name="annual"><br>
         Registration Certificate: <input type="file" name="rcertificate">
      </form>

</body>
</html>