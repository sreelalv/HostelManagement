<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<link rel="stylesheet" type="text/css" href="css/reg.css" />
<%@include file="Header.jsp" %>
<div class="body" align="center">
        <form method="post">
            <div class="container">
        <div class="row">
               <h1 class="h1 input-container"><strong>STUDENT REGISTRATION</strong></h1>
        </div>
        <div class="row input-container">
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="name" name="name" required />
                        <label>Name</label> 
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="age" name="age" required />
                        <label>Age</label> 
                    </div>
                </div>
            
                <div class=" col-xs-6 col-md-6 ">
                    <div class="">
                       
                        <input type="radio" class="btn-check" name="gender" id="male" autocomplete="off">
                        <label class="btn btn-secondary" for="male">Male</label>
                    </div>
                </div>
                <br><br>
                <div class=" col-xs-6 col-md-6">
                    <div class="">
                         
                        <input type="radio" class="btn-check" name="gender" id="female" autocomplete="off">
                        <label class="btn btn-secondary" for="female">Female</label>
                    </div>
                </div>
                
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <textarea id="address" name="address" required></textarea>
                        <label>Address</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" id="fathname" name="fathname" required />
                        <label>Name of Father</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" id="fatherno" name="fatherno" required />
                        <label>Phone Number</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" id="mothname" name="mothname" required />
                        <label>Name of Mother</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" id="motherno" name="motherno" required />
                        <label>Phone Number</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" id="guardname" name="guardname" required />
                        <label>Name of Guardian</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" id="guardno" name="guardno" required />
                        <label>Phone Number</label> 
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="college" name="college" required />
                        <label>Name of School/College</label> 
                    </div>
                </div>
                <div class=" col-md-12">
                    <div class=" styled-input wide" >
                        <input type="date" id="joindate" name="joindate"  value="2000-01-01">
                        <label for="joindate">Join Date</label> 
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide"> 
                        

                          <select id="roomno" name="roomid" class="form-select bg-dark text-white input-container" aria-label="Default select example">
                            <option selected>Room Number</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                          </select>
                    </div>
                </div>
                <div class="col-md-12">
                    <input type="submit" name="submit" class="btn-lrg submit-btn input-container">
                    
                </div>
        </div>
    </div>
</form>
</div>
<%@include file="Footer.jsp" %>

<%
  if(request.getParameter("Submit")!=null){
    String studname=request.getParameter("name");
    String age=request.getParameter("Age");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String fathname=request.getParameter("fathname");
    String fathphone=request.getParameter("fatherno");
    String mothname=request.getParameter("mothname");
    String mothphone=request.getParameter("motherno");
    String guardname=request.getParameter("guardname");
    String guardphone=request.getParameter("guardno");
    String institute=request.getParameter("college");
    String joindate=request.getParameter("joindate");
    String roomid=request.getParameter("roomid");
    
    DbQuery dq= new DbQuery(); 
    int i=dq.addStudent(studname, age, gender, address, fathname, fathphone, mothname, mothphone, guardname, guardphone, institute, joindate, roomid);
    if(i>0){
      %>
      <script>
          alert("Successfully registered");
      </script>
      <%
    }
  }
%>
