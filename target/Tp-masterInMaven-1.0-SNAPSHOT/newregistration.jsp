 
<html>
    <head>
      
        <link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="//storage.googleapis.com/code.getmdl.io/1.0.1/material.teal-red.min.css" />
<script src="//storage.googleapis.com/code.getmdl.io/1.0.1/material.min.js"></script>
        <title>New Registration</title>
 <style type="text/css">
            a {text-decoration:none;}
            body{
                font-size: 150%;
            }
            .mdl-layout {
                align-items: center;
              justify-content: center;
            }
            .mdl-layout__content {
                padding: 24px;
                flex: none;
            }
        </style>
        <script>
 
      
    function validate(){
        
                var checkString = document.forms.f.password.value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters!");
                            document.forms.f.password.focus();
                            return (false);
                        }
                }
                
                checkString = document.forms.f.name.value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d_ ]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters!");
                            document.forms.f.name.focus();
                            return (false);
                        }
                }
                
                checkString = document.forms.f.password.value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters!");
                            document.forms.f.password.focus();
                            return (false);
                        }
                }
                
                if(document.forms.f.password.value!=document.forms.f.repassword.value)
                    {
                        document.forms.f.password.focus();
                        alert("Type Correct Password!");
                        return false;
                    }
                    else
                    {
                        return true;
                    }

   
          
}               
  
</script>   
    </head>
    <body>
   <table  bgcolor="white"  width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
            <tr bgcolor="Blue">
                <td height="20" colspan="2" align="center" bgcolor="">
                      <a href="http://www.punjabiuniversity.ac.in/pbiuniweb/placementsnew.html" >     <font color="white">Punjabi University Training and Placement Cell</font>      </a>  
                </td>
          
            </tr>
           <tr height="100">
                <td colspan="2" align="center">
                   <img  width="50%" height="100%" src="http://www.punjabiuniversity.ac.in/pup/images/logo.png"  >  </td>
            </tr>
            <tr >
                <td style="text-align: center;" >

    <main class="mdl-layout__content">
        <div class="mdl-card mdl-shadow--6dp">
            <div class="mdl-card__title mdl-color--primary mdl-color-text--white">
                <h2 class="mdl-card__title-text">New User!</h2>
            </div>
        <div class="mdl-card__supporting-text">
            <form id="formsub" name="f" action="generateotp.jsp" onsubmit="return validate()">
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="text" id="uname" name="name" pattern="[A-Z,a-z, ]*" required="" />
                        <label class="mdl-textfield__label" for="uname">Username</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="number" id="roll" name="rollno" min="0"  required="" />
                        <label class="mdl-textfield__label" for="roll">Roll Number</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="email" id="em" name="email" required="" />
                        <label class="mdl-textfield__label" for="em">Email ID</label>
                    </div>
                <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="password" id="userpass" name="password" required=""  />
                        <label class="mdl-textfield__label" for="userpass">Password</label>
                    </div>
                <div class="mdl-textfield mdl-js-textfield">
                        <input class="mdl-textfield__input" type="password" id="reuserpass"  name="repassword" required=""  />
                        <label class="mdl-textfield__label" for="reuserpass">Renter Password</label>
                    </div>
                </form>
            </div>
            <div class="mdl-card__actions mdl-card--border">
                <button class="mdl-button mdl-button--raised mdl-button--colored" type="submit" form="formsub" >Register</button>
            </div>
        </div>
    </main>

                </td>     
            </tr>
            <tr bgcolor="#993300" height="20">
            <td colspan="2"  align="center" bgcolor="#0066FF ">
              <a href="aboutus.jsp" ><font color="white">About Us</a></font>
            </td>
            </tr>
         </table>     
    </body>
</html>
