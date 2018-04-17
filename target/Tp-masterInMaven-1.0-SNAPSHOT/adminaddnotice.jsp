<%@include file="adminheader.jsp" %>

<form name="f" method="post" action="admininsertnotice.jsp">
  <br>
    <br>
      <table border="0" cellspacing="1" cellpadding="1">

        <tr>
          <td>Title</td>
          <td>
            <input required type="text" name="title" value=""/>
          </td>
        </tr>
        <tr>
          <td>Description</td>
          <td>
            <textarea name="description" rows="4" cols="20"></textarea>
          </td>
        </tr>

      </table>
      <br>
        <hr>
          <input align="center" type="submit" value="Add" name="b"/>
  </form>

        <%@include file="adminfooter.jsp" %>
