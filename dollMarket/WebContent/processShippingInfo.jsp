<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie adress_zip = new Cookie("Shipping_adress_zip",	URLEncoder.encode(request.getParameter("adress_zip"), "utf-8"));
	Cookie adress_add = new Cookie("Shipping_adress_add",	URLEncoder.encode(request.getParameter("adress_add"), "utf-8"));
	Cookie pnum = new Cookie("Shipping_pnum",	URLEncoder.encode(request.getParameter("pnum"), "utf-8"));
	Cookie email = new Cookie("Shipping_email",	URLEncoder.encode(request.getParameter("email"), "utf-8"));

	cartId.setMaxAge(24 * 60 * 60);
	name.setMaxAge(24 * 60 * 60);
	adress_zip.setMaxAge( 24 * 60 * 60);
	adress_add.setMaxAge(24 * 60 * 60);
	pnum.setMaxAge(24 * 60 * 60);
	email.setMaxAge(24 * 60 * 60);

	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(adress_zip);
	response.addCookie(adress_add);
	response.addCookie(pnum);
	response.addCookie(email);

	response.sendRedirect("orderConfirmation.jsp");
%>
