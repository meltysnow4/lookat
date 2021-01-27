
<jsp:include page="../template/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

      <div class="col-lg-3">
		<!-- 좌측바 -->
        <p class="my-4">Shop</p>	
        <div class="list-group">
          <a href="#" class="list-group-item">Outer</a>
          <a href="#" class="list-group-item">Bottom</a>
          <a href="#" class="list-group-item">Bag</a>
          <a href="#" class="list-group-item">BLACK FRI-DAY</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->
	
      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>	
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <!-- 리스트를 늘릴수록 아래의 하이픈바가 늘어나가면서 슬라이드가 추가되는방식. -->
          </ol>
          <!-- 중앙 900x350 배너 -->
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
            </div>
          </div>
          <!-- 중앙 900x350 배너 화살표 -->
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <div class="row">
		<c:forEach var="productDto" items="${list}">
			<!-- 카드상자들  -->
		<c:set var="size" value="${productDto.p_Size}" />
		<c:if test="${size eq 'S' or size eq 'FREE'}">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <!--  <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>-->
              <a href="productViewPage.do?no=${productDto.p_No}"><img class="card-img-top" src="${productDto.p_Image}" alt=""></a>
              <div class="card-body">
                <h6 class="card-title">
                  <a href="productViewPage.do?no=${productDto.p_No}">${productDto.p_Name} [${productDto.p_Color}]</a>
                </h6>
                <h6>&#8361; ${productDto.p_Price}</h6>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>	<!-- 별표시 -->
              </div>
            </div>
          </div>
         </c:if>
		</c:forEach>
        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->


 <%@ include file="../template/footer.jsp" %>