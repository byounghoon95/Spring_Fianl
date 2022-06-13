<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/market.css" rel="stylesheet" />

<title>Cheese Market</title>
</head>
<body id="page-top">

    <main>

        <section id="scroll">
            <div class="container px-5" id="first_body">
              <div class="row gx-5 align-items-center">
                <div class="col-lg-6 order-lg-2">
                    <div class="p-5">
                    	<h3 class="display-4">치즈 마켓</h3>
						<p>필요한 중고 물품을 주변에서 쉽게 구해봐요 !</p>
						<p>언제 어디서나 쉽고 편하게~</p>
						<p>함께해요 치즈마켓 :D</p><br><br>
                        <button type="button" class="btn btn-warning sellbtn" id="start">내 물건 팔기</button>
                      </div>
                </div>
                <div class="col-lg-6 order-lg-1">

                  <div class="p-5">
                    <img
                      class="img-fluid"
                      src="images/character_market.png"
                      alt="..."
                      id="character"
                    />
                  </div>
                </div>              
              </div>
            </div>
          </section>

        
        
  
        <div class="itemtitle font-size: large" >
          <h2>오늘의 인기상품</h2>
        </div>
      
	  	<div class="items">
	        <div class="container">
				<div class="market_itembox">
					<ul class="faq-list">
						<c:forEach var="bestList" items="${marketBestList }">
							<li class="li_item">
								<div class="card item" style="width: 18rem;">
						          <img src="images/cheese.png" class="card-img-top" alt="...">
						         <%--  <img src="<%=context %>/fileSave/${bestList.img_path}" class="card-img-top"> --%>
						          <div class="card-body">
						            <h5 class="card-title"><div class="card-itemTitle">${bestList.itemtitle }</div></h5>
						            <p class="card-text">
						            	<span>${bestList.itemcost }</span><br>
						            	<span>서울시&nbsp&nbsp ${bestList.content }</span>
						            </p>
						           
						            <div class="item_boxbottom">
						              <a href="#" class="btn btn-primary itembtn">상품 보러가기</a>
						              
						              <div class="board_icon_view d-flex justify-content-start likechat">
						                <i class="fa-solid fa-heart"></i>&nbsp
						                <span id="heart_cnt">${bestList.itemwish }&nbsp&nbsp</span>
						                <i class="fa-solid fa-eye"></i>&nbsp&nbsp
						                <span id="reply_cnt">${bestList.itemview }</span>
						              </div>
						            </div>
						          </div>
						        </div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
	  </div>
 

       
        <div class="itemtitle">
          <h2>전체 상품</h2>
        </div>
        
  			
 				  	<div class="items">
			        <div class="container">
						<div class="market_itembox">
							<ul class="faq-list">
								<c:forEach var="allList" items="${marketAllList }">
									<li class="li_item">
										<div class="card item" style="width: 18rem;">
								          <img src="images/cheese.png" class="card-img-top" alt="...">
								          <div class="card-body">
								            <h5 class="card-title"><div class="card-itemTitle">${allList.itemtitle }</div></h5>
								            <p class="card-text">
								            	<span>${allList.itemcost }</span><br>
								            	<span>서울시&nbsp&nbsp ${allList.content }</span>
								            </p>
								           
								            <div class="item_boxbottom">
								              <a href="#" class="btn btn-primary itembtn">상품 보러가기</a>
								              
								              <div class="board_icon_view d-flex justify-content-start likechat">
								                <i class="fa-solid fa-heart"></i>&nbsp
								                <span id="heart_cnt">${allList.itemwish }&nbsp&nbsp</span>
								                <i class="fa-solid fa-eye"></i>&nbsp&nbsp
								                <span id="reply_cnt">${allList.itemview }</span>
								              </div>
								            </div>
								          </div>
								        </div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
			  </div>
  			



  
         <!-- pagination -->
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<c:if test="${pg.startPage > pg.pageBlock }">
							<li class="page-item"><a class="page-link" href="market?currentPage=${pg.startPage-pg.pageBlock}"
								aria-label="Previous" id="page_btn"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>
						<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
							<li class="page-item"><a class="page-link" href="market?currentPage=${i}"
								id="page_btn">${i}</a></li>
						</c:forEach>
						<c:if test="${pg.endPage < pg.totalPage }">
							<li class="page-item"><a class="page-link" href="market?currentPage=${pg.startPage+pg.pageBlock}"
								aria-label="Next" id="page_btn"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
					</ul>
				</nav>
		<!-- pagination end-->
				
	</main>

<%@ include file="footer.jsp" %>
</body>
</html>