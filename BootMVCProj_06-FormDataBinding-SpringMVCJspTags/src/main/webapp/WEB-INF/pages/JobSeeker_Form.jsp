<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
    }

    form {
      background: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.2);
      width: 350px;
      text-align: center;
    }

    h2 {
      margin-bottom: 20px;
      color: #333;
    }

    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
      color: #444;
      text-align: left;
    }

    input[type="text"],
    input[type="number"] {
    
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 2px solid #ccc;
      border-radius: 8px;
      outline: none;
      transition: border-color 0.3s;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
      border-color: #6a11cb;
    }

    input[type="submit"] {
      margin-top: 20px;
      padding: 12px;
      width: 100%;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: transform 0.2s, background 0.3s;
    }
  input[type="reset"] {
      margin-top: 20px;
      padding: 12px;
      width: 100%;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: transform 0.2s, background 0.3s;
    }
    input[type="submit"]:hover {
      transform: scale(1.05);
      background: linear-gradient(135deg, #2575fc, #6a11cb);
    }
     input[type="reset"]:hover {
      transform: scale(1.05);
      background: linear-gradient(135deg, #2575fc, #6a11cb);
    }
  </style>
</head>
<body>
<!-- 1)Spring mvc supplied JSP by default mode is "POST" so writing this (method="post") 
is not imp 
  
  2)also if we do not give a action attribute it use a lunch url as as action url 
   so lunch and send url path are same its (action="register") also optional 
  3) modelAttribute="jobSeeker"    here is jobSeeker is a model class name having 
                                         first latter as small (required)
-->
  <frm:form  modelAttribute="jobSeeker">
    <h2>Register</h2>
    
    <label for="id">ID</label>
    <frm:input id="id" path="id" required="required"/>
    
    <label for="name">Name</label>
    <frm:input id="name" path="name" required="required"/>
    
    <label for="address">Address</label>
    <frm:input id="address" path="addr" required="required"/>
    
    <label for="qualification">Qualification</label>
    <frm:input id="qualification" path="qualification" required="required" />
    
    <label for="fee">Fee</label>
    <frm:input id="fee" path="fee" required="required"/>
    
    <input type="submit" value="Register">
    <input type="reset" value="Cancel">
</frm:form>

</body>
</html>