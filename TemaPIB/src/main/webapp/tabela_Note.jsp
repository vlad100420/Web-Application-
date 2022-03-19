<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Tabela note">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Tabela Note</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Note.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.4.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Note">
    <meta property="og:type" content="website">
  </head>
	<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
    <jsp:setProperty name="jb" property="*" />
  <body data-home-page="Note.html" data-home-page-title="Note" class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-91b4"><div class="u-clearfix u-sheet u-sheet-1">
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
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" id="sec-c04c" data-image-width="1920" data-image-height="992">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-palette-2-light-2 u-text-1">Tabela Note</h1>
        <form action="sterge_Nota.jsp" method="POST" name="f1">
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="7.9%">
              <col width="11%">
              <col width="11.6%">
              <col width="10.2%">
              <col width="10.4%">
              <col width="10.8%">
              <col width="6.2%">
              <col width="9.8%">
              <col width="10.5%">
              <col width="11.59999999999999%">
            </colgroup>
            <thead class="u-align-center u-custom-font u-heading-font u-palette-1-base u-table-header u-table-header-1">
              <tr style="height: 45px;">
                <th class="u-table-cell">Mark</th>
                <th class="u-table-cell">Idnota</th>
                <th class="u-table-cell">Nume elev</th>
                <th class="u-table-cell">Prenume elev</th>
                <th class="u-table-cell">Clasa</th>
                <th class="u-table-cell">Nume profesor</th>
                <th class="u-table-cell">Materie</th>
                <th class="u-table-cell">Numar probleme</th>
                <th class="u-table-cell">Nota acordata</th>
                <th class="u-table-cell">Data</th>
              </tr>
            </thead>
            <tbody class="u-align-center u-table-body u-text-body-color">
             <%
                    jb.connect();
                    ResultSet rs = jb.vedeNote();
                    long x;
                    while (rs.next()) {
                        x = rs.getInt("idnota");
                %>
              <tr style="height: 80px;">
              	<td class="u-palette-4-light-2 u-table-cell u-table-cell-10"><input type="checkbox" name="primarykey" value="<%= x%>" /></td>
                <td class="u-first-column u-table-cell u-white"><%= x%></td>
                <td class="u-palette-4-light-2 u-table-cell u-table-cell-12"><%= rs.getString("NumeElev")%></td>
                <td class="u-table-cell u-white"><%= rs.getString("PrenumeElev")%></td>
                <td class="u-palette-4-light-2 u-table-cell u-table-cell-14"><%= rs.getString("Clasa")%></td>
                <td class="u-table-cell u-white"><%= rs.getString("Profesor")%></td>
                <td class="u-palette-4-light-2 u-table-cell u-table-cell-16"><%= rs.getString("Materie")%></td>
                <td class="u-table-cell u-white u-table-cell-17"><%= rs.getString("Numar_probleme")%></td>
                <td class="u-palette-4-light-2 u-table-cell u-table-cell-18"><%= rs.getString("Nota_acordata")%></td>
                <td class="u-table-cell u-white u-table-cell-19"><%= rs.getString("Data_notare")%></td>
              </tr>
              <%
              	}
             %>
            </tbody>
          </table>
        </div>
         <div class="u-align-center u-form-group u-form-submit">
                <input type="submit" value="Modifica Nota" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-light-2 u-radius-50 u-btn-1" onclick="f1.action='m1_Nota.jsp'; return true;" wfd-invisible="true">
                </div>
        <div class="u-align-center u-form-group u-form-submit">
                <input type="submit" value="Sterge Nota" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-light-2 u-radius-50 u-btn-3" onclick="this.form.target='_blank';return true;" wfd-invisible="true">
                </div>
        </form>
      	<a href="nou_Nota.jsp" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-light-2 u-radius-50 u-btn-2">Adauga nota</a>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-f8d1"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1"> Copyright © 2022 | Militaru Andrei Vlad</p>
      </div></footer>
  </body>
</html>