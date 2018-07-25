<%--
  Created by IntelliJ IDEA.
  User: usery
  Date: 23/07/2018
  Time: 02:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>WEB APP</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

  </head>
  <body>
  <div class="container">
      <h1>Aplicación Web con Java</h1>
      <div id="js-container"></div>
  </div>


  <script
          src="https://code.jquery.com/jquery-3.3.1.min.js"
          integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
          crossorigin="anonymous">
  </script>

  <script>
      (function ($) {
          var url = '/users';
          $.ajax({
              url: url,
              success: function (response) {
                  console.log(response);

                  $('#js-container').html(response.text);
              }
          })
      })(jQuery);
  </script>
  </body>
</html>
