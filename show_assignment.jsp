<%
    if(request.getParameter("id")!=null)
    {
        out.print("<embed src='teacher_pics/"+request.getParameter("id")+"'" +" width='1300px' height='800px' />");
    }
%>