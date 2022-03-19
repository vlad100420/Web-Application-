<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Tabela elevi​">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Tabela Elevi</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="elevi.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.3.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Elevi">
    <meta property="og:type" content="website">
  </head>
  <jsp:useBean id="jb" scope="session" class="db.JavaBean"/>
  <jsp:setProperty name="jb" property="*"/>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-91b4"><div class="u-clearfix u-sheet u-sheet-1">
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
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#" style="padding: 10px 20px;">About</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" id="sec-c04c" data-image-width="1920" data-image-height="992">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-palette-2-light-2 u-text-1">Tabela elevi </h1>
        <form action="sterge_Elev.jsp" method="POST" name="f1">
        <div class="u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="12.4%">
              <col width="13.200000000000003%">
              <col width="12.4%">
              <col width="12.1%">
              <col width="12.7%">
              <col width="12.4%">
              <col width="12.4%">
              <col width="12.600000000000003%">
            </colgroup>
            <thead class="u-align-center u-custom-font u-heading-font u-palette-1-base u-table-header u-table-header-1">
              <tr style="height: 45px;">
              <th class="u-table-cell">Mark</th>
                <th class="u-table-cell">IdElevi</th>
                <th class="u-table-cell">Nume</th>
                <th class="u-table-cell">Prenume</th>
                <th class="u-table-cell">Data nasterii</th>
                <th class="u-table-cell">Cnp</th>
                <th class="u-table-cell">Adresa</th>
                <th class="u-table-cell">Telefon</th>
                <th class="u-table-cell">Clasa</th>
              </tr>
            </thead>
            <tbody class="u-align-center u-table-body u-text-body-color">
              <%
                    jb.connect();
                    ResultSet rs = jb.vedeTabela("elevi");
                    long x;
                    while (rs.next()) {
                        x = rs.getInt("idelev");
                %>
                <tr>
                    <td class="u-palette-4-light-2 u-table-cell u-table-cell-10"><input type="checkbox" name="primarykey" value="<%= x%>" /></td>
                    <td class="u-first-column u-table-cell u-white"><%= x%></td>
                    <td class="u-palette-4-light-2 u-table-cell u-table-cell-10"><%= rs.getString("Nume")%></td>
                    <td class="u-first-column u-table-cell u-white"><%= rs.getString("Prenume")%></td>
                    <td class="u-palette-4-light-2 u-table-cell u-table-cell-10"><%= rs.getString("Data_nasterii")%></td>
                    <td class="u-first-column u-table-cell u-white"><%= rs.getString("Cnp")%></td>
                    <td class="u-palette-4-light-2 u-table-cell u-table-cell-10"><%= rs.getString("Adresa")%></td>
                    <td class="u-first-column u-table-cell u-white"><%= rs.getString("Telefon")%></td>
                    <td class="u-palette-4-light-2 u-table-cell u-table-cell-10"><%= rs.getString("Clasa")%></td>
                    <%
                        }
                    %>
            </tbody>
          </table> 
        </div>
        <div class="u-align-center u-form-group u-form-submit">
                <input type="submit" value="Modifica Elev" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-light-2 u-radius-50 u-btn-1" onclick="f1.action='m1_Elev.jsp'; return true;" wfd-invisible="true">
                </div>
        <div class="u-align-center u-form-group u-form-submit">
                <input type="submit" value="Sterge Elev" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-light-2 u-radius-50 u-btn-2" onclick="this.form.target='_blank';return true;" wfd-invisible="true">
                </div>
        </form>
        <a href="nou_Elev.jsp" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-light-2 u-radius-50 u-btn-3">Adauga elev</a>
      </div>
    </section>
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-f8d1"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1"> Copyright © 2022 | Militaru Andrei Vlad</p>
      </div></footer>
  </body>
</html>
