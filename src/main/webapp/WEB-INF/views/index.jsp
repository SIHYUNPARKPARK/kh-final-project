<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>index</title>
        <!-- fontawesome-->
        <script src="https://kit.fontawesome.com/7d7ec2f3ed.js" crossorigin="anonymous"></script>
        <!-- Jquery-->
        <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <!-- bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
        <!-- CSS -->
        <link rel="stylesheet" href="/css/font.css">
        <link rel="stylesheet" href="/css/index.css">

</head>

<body>
    <!--  Header -->
    <header>
        <div class="header_Container">
            <ul class="header_list">
              <c:choose>
               <c:when test="${loginId != null}">
            ${loginId} 님 안녕하세요&nbsp;&nbsp;| &nbsp;&nbsp;
                  <a href="/member/logout" id="logoutbtn">로그아웃&nbsp;&nbsp;|</a>&nbsp;&nbsp;
                  <a href="/member/myPage">마이페이지&nbsp;&nbsp;|</a>&nbsp;&nbsp;
                  <a href="/member/leave" id="leavebtn" >회원 탈퇴&nbsp;&nbsp;|</a>&nbsp;&nbsp;
               </c:when>
               <c:otherwise>
                  <li><a href="signIn">로그인</a></li>
                  <li><a href="join">회원가입</a></li>
               </c:otherwise>
            </c:choose>
                
            </ul>
        </div>
        <div class="div-wrap">
            <div class="nav_div">
                <div class="logo">
                    <i class="fas fa-seedling"></i>
                    <a href="/">00마켓</a>
                </div>
                <div class="searchBar">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="동네 이름, 물품명 등을 검색해 보세요!"
                            aria-label="Recipient's username" aria-describedby="button-addon2">
                        <button class="btn btn-outline-secondary" type="button" id="button-addon2"><i
                                class="fas fa-search fa-2x"></i></button>    
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main>
        <div class="index-container">
            <!-- 네비바 -->
            <div class="top-div">
                <div class="div-wrap2">
                    <div class="btn-group">
                        <button type="button" class="btn btn-secondary-light" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fas fa-bars fa-2x"></i>
                        </button>
                        <ul class="dropdown-menu">

                            <!-- Dropdown menu links -->
                            <li><h6 class="dropdown-header">전체 카테고리</h6></li>
                            <li><a class="dropdown-item" href="productList" id="c01">여성의류</a></li>
                            <li><a class="dropdown-item" href="#" id="c02">남성의류</a></li>
                            <li><a class="dropdown-item" href="#" id="c03">신발</a></li>
                            <li><a class="dropdown-item" href="#" id="c04">가방</a></li>
                            <li><a class="dropdown-item" href="#" id="c05">시계/쥬얼리</a></li>
                            <li><a class="dropdown-item" href="#" id="c06">패션악세서리</a></li>
                            <li><a class="dropdown-item" href="#" id="c07">디지털/가전</a></li>
                            <li><a class="dropdown-item" href="#" id="c08">스포츠/레저</a></li>
                            <li><a class="dropdown-item" href="#" id="c09">차량/오토바이</a></li>
                            <li><a class="dropdown-item" href="#" id="c10">차량/오토바이</a></li>
                            <li><a class="dropdown-item" href="#" id="c11">스타굿즈</a></li>
                            <li><a class="dropdown-item" href="#" id="c12">키덜트</a></li>
                        </ul>
                    </div>
                    <div class="rightList">

                        <a href="productAdd" class="btn-sell">
                            <i class="fas fa-dollar-sign fa-2x"></i> 판매하기 </a>
                        |
                        <a href="myPage" class="btn-myshop">
                            <i class="fas fa-store fa-2x"></i> 내상점 </a>
                        |
                        <a href="talk" class="btn-talk">
                            <i class="fas fa-comment fa-2x"></i> 00톡</a>
                        |
                        <a href="board/boardList" class="btn-talk">
                            <i class="fas fa-edit fa-2x"></i>커뮤니티</a>


                    </div>
                </div>
            </div>
            <div class="middle-div">
                <section>
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner" style="height: 30vh;">
                            <div class="carousel-item active">
                                <img src="/imgs/banner4.png" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="/imgs/banner4.png" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="/imgs/banner4.png" class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                    <article>

                        <p class="article_title">
                            오늘의 상품추천
                        </p>
                        <!-- imgBox 1 구간 -->
                        <div class="imgBox">
                            <a href="productDetail">
                                <div class="detail-img">
                                    <img src="imgs/t-shirt.jpeg">
                                </div>
                                <div class="detail-container">
                                    <div class="title">티셔츠</div>
                                    <div class="price">3000원</div>
                                    <div class="date">0일전</div>
                                </div>

                            </a>
                            <a href="#">
                                <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                                 <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>

                            </a>
                            <a href="#">
                               <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                                <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>

                            </a>
                            <a href="#">
                               <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                                <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>
                            </a>

                            <a href="#">
                                 <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                                 <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>

                            </a>
                            <a href="#">
                                <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                                <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>

                            </a>

                            <!-- imgBox 2 구간 -->
                            <a href="#">
                                <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                               <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>

                            </a>
                            <a href="#">
                                <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                                <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>
                            </a>
                            <a href="#">
                                 <div class="detail-img">
                                    <img src="imgs/200Pic.png">
                                </div>
                               	<div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>

                            </a>
                            <a href="#">
                                <div>
                                    <img src="imgs/200Pic.png">
                                </div>
                                <div class="detail-container">
                                    <div class="title">상품명</div>
                                    <div class="price">0000원</div>
                                    <div class="date">0일전</div>
                                </div>
                            </a>

                        </div>


                    </article>
                </section>
            </div>
        </div>
        </div>
        <div class="d-none d-lg-block" id="sideBar">
        	 <div class="sidebar-div">
                 <a href="#"> <button class="btn btn-outline-secondary" type="button" id="likeProductBtn">찜한상품<br><i class="fas fa-heart">개수</i></button></a>
                 <a href="#"><button class="btn btn-outline-secondary" id="upTopBtn" onclick="window.scrollTo(0,0)">Top</button></a>
             </div>
        </div>
    </main>
    <!-- footer -->
    <footer>
        <div class="footer-box">
            <span>만든이들 : 곽서호, 김동현 92, 김동현 93, 김동휘, 박시현, 베소현 </span><br>
            <span>CopyRight 2022 @ ALL RIGHT RESERVED</span>
        </div>
    </footer>
    
    <script>
    	$("#logoutbtn").on("click",function(){
    		confirm("정말 로그아웃하시겠습니까?");
    		location.href = "/member/leave" 
    	})
    	$("#leavebtn").on("click",function(){
    		confirm("정말 회원을 탈퇴하시겠습니까?")
    	})
    </script>
</body>

</html>