<%-- 
    Document   : Odev1_3
    Created on : 29.Eki.2020, 00:34:33
    Author     : Engin KUZU - 2018123079
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ÖDEV 1 Declaration Tag</title>
</head>
<style>
label{
        font-weight: 500;
        padding-top: 10px;
        color: #67757c;
        text-align: left;
    }
input{
        border-radius: 5px;
        box-sizing: border-box;
        padding: .375rem .75rem;
        font-size: 1rem;
        line-height: 1.5;
        color: #495057;
        border: 1px solid #ced4da;
    }
button {
        cursor: pointer;
        background-color: #65bdf8;
        color: #fff;
        font-size: 15px;
        padding: 7px 20px;
        line-height: 32px;
        border-radius: 5px;
        border: 1px solid transparent;
    }
    tr, td{
        height: 20px;
    }
    .sonuc{
        background-color: #fbae1c;
        color: #fff !important;
        border-color: #fbae1c;
        margin: 0 0 20px;
padding: 15px 30px 15px 15px;
border-left: 5px solid #eee;
border-radius: 5px;
box-sizing: border-box;
font-weight: 400;
font-size: 13px;
    }    
</style>
<body>
    <%! 
public String yaz(String s){
if (s==null) return "";
else return s;
}
String ek=" Bilgisi Girildi.";
    %>
      <form method = "POST">
          <center>
              <table >
                <tr>
                    <td colspan="3" style="text-align: center;"><label><b>ÖDEV 1 Declaration Tag</b></label></td>
                </tr>                  
                <tr>
                    <td><label>ADI </label></td><td>:</td>
                  <td><input type = "text" name = "adText" value="<%=yaz(request.getParameter("adText"))%>"></td>
                </tr>
                <tr>
                  <td><label>SOYADI </label></td><td>:</td>
                  <td><input type = "text" name = "soyadText" value="<%=yaz(request.getParameter("soyadText"))%>"></td>
                </tr> 
                <tr><td colspan="3"></td></tr>
                <tr><td colspan="3" align="center"  ><button type="submit"/>KAYDET</button></td></tr>
                </table>
              <div style="margin-top:50px;" >
                  <label class="sonuc">
                      <%=yaz(request.getParameter("adText"))%>
                      <%=yaz(request.getParameter("soyadText"))+ek%>
                    </label></div>
             
          </center>
      </form>
</body>
</html>

