<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	body {
  margin: 0;
}
h1 {
  text-align: center;
}
.container {
  width: 70%;
  margin: auto;
  overflow: hidden;
}
.images {
  width: 100%;
  height: auto;
}
.images img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

@media (min-width: 640px) {
  .container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 30px;
    grid-auto-flow: row dense;
  }
  .imageFlex1 {
    display: grid;
    row-gap: 20px;
  }
  .imageFlex2 {
    display: grid;
    row-gap: 20px;
  }
  .imageFlex3 {
    display: grid;
    row-gap: 20px;
  }
}


	</style>


</head>
<body>
	 <jsp:include page="../common/header.jsp" />
   <body>
    <h1>WMS Gallery</h1>
    <div class="container">
      <div class="images">
        <div class="imageFlex1">
          <img src="../../../resources/image/gallery/wms1.jpg">
          <img src="../../../resources/image/gallery/wms2.jpg">
          <img src="../../../resources/image/gallery/wms3.jpg">
          <img src="../../../resources/image/gallery/wms4.jpg">
          <img src="../../../resources/image/gallery/wms5.jpg">
          <img src="../../../resources/image/gallery/wms6.jpg">
        </div>
      </div>
      <div class="images">
        <div class="imageFlex2">
          <img src="../../../resources/image/gallery/wms2.jpg">
          <img src="../../../resources/image/gallery/wms3.jpg">
          <img src="../../../resources/image/gallery/wms5.jpg">
          <img src="../../../resources/image/gallery/wms6.jpg">
          <img src="../../../resources/image/gallery/wms4.jpg">
          <img src="../../../resources/image/gallery/wms1.jpg">
        </div>
      </div>
      <div class="images">
        <div class="imageFlex3">
         <img src="../../../resources/image/gallery/wms3.jpg">
          <img src="../../../resources/image/gallery/wms4.jpg">
          <img src="../../../resources/image/gallery/wms5.jpg">
          <img src="../../../resources/image/gallery/wms1.jpg">
          <img src="../../../resources/image/gallery/wms2.jpg">
          <img src="../../../resources/image/gallery/wms6.jpg">
        </div>
      </div>
    </div>
  </body>
	 <jsp:include page="../common/footer.jsp"/>
</body>
</html>