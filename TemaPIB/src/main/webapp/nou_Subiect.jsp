<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Adauga elev">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Adauga Subiect</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Adauga-Subiect.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.4.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Adauga Subiect">
    <meta property="og:type" content="website">
  </head>
	<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
    <jsp:setProperty name="jb" property="*" />
  <body data-home-page="Adauga-Subiect.html" data-home-page-title="Adauga Subiect" class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-91b4"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="index.html" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 10px 20px;">About</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="index.html" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#" style="padding: 10px 20px;">About</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
      <%
            String Profesor = request.getParameter("Profesor");
            String Materie = request.getParameter("Materie");
            String Numar_probleme = request.getParameter("Numar_probleme");
            if (Profesor != null) {
                jb.connect();
                jb.adaugaSubiect(Profesor, Materie, Numar_probleme);
                jb.disconnect();
        %>
         <section class="u-align-center u-clearfix u-section-2" id="sec-9b94">
      			<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        		<h1 class="u-text u-text-default u-text-1">Datele au fost adaugate cu succes.</h1>
      			</div>
    			</section><%
        } else {
        %>
    <section class="u-align-center u-clearfix u-image u-section-1" id="carousel_71d7" data-image-width="810" data-image-height="1080">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-palette-3-base u-shape u-shape-rectangle u-shape-1"></div>
        <div class="u-container-style u-group u-radius-50 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h2 class="u-align-center u-custom-font u-font-montserrat u-text u-text-1">Adauga subiect</h2>
            <div class="u-form u-form-1">
              <form action="nou_Subiect.jsp" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-13 u-form-vertical u-inner-form" style="padding: 0;" source="custom" name="form" redirect="true">
                <div class="u-form-group u-form-name">
                  <label for="name-f18c" class="u-label u-label-1">Nume profesor</label>
                  <input type="text" id="name-f18c" name="Profesor" class="u-grey-5 u-input u-input-rectangle u-input-1" required="required">
                </div>
                <div class="u-form-group u-form-group-2">
                  <label for="text-2ff4" class="u-label u-label-2">Materie</label>
                  <input type="text" placeholder="" id="text-2ff4" name="Materie" class="u-grey-5 u-input u-input-rectangle u-input-2" required="required">
                </div>
                <div class="u-form-group u-form-group-3">
                  <label for="text-16d6" class="u-label u-label-3">Numar de probleme</label>
                  <input type="text" placeholder="" id="text-16d6" name="Numar_probleme" class="u-grey-5 u-input u-input-rectangle u-input-3" required="required">
                </div>
                <div class="u-align-center u-form-group u-form-submit">
                  <a href="tabela_Elevi.jsp" class="u-btn u-btn-submit u-button-style u-palette-3-base u-btn-1">Submit</a>
                  <input type="submit" value="submit" class="u-form-control-hidden" wfd-invisible="true">
                </div>
                <input type="hidden" value="" name="recaptchaResponse" wfd-invisible="true">
              </form>
              <%
               }
        	  %>
            </div>
          </div>
        </div>
      </div>
    </section>    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-f8d1"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1"> Copyright © 2022 | Militaru Andrei Vlad</p>
      </div></footer>
  </body>
</html>