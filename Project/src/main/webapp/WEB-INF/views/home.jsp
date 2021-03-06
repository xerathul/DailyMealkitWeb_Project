<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/home.jsp</title>
<jsp:include page="../../resources/include/resource.jsp"></jsp:include>
<style>
	#mainpage{background-image: url(resources/images/korean1.jpg);
			  background-repeat: no-repeat;
			  background-position: center;
	}
	
	#mainpage2{background-image: url(resources/images/spaghetti.jpg);
			  background-repeat: no-repeat;
			  background-position: center;
	}
	
	#mainpage3{background-image: url(resources/images/japanese1.png);
			  background-repeat: no-repeat;
			  background-position: center;
	}
	
	#mainpage4{background-image: url(resources/images/chinese1.jpg);
			  background-repeat: no-repeat;
			  background-position: center;
	}
	
</style>
</head>
<body>
<jsp:include page="../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>

<div class="container">

		<div id="carouselExampleCaptions"
			class="carousel slide p-3 p-md-3 m-md-5" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath }/resources/images/mealkit11.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 style="color:white; font-family:굴림체; text-shadow:-2px 0 #000, 0 2px #000, 2px 0 #000, 0 -2px #000; "></h1>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath }/resources/images/mealkit12.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 style="color:white; font-family:굴림체; text-shadow:-2px 0 #000, 0 2px #000, 2px 0 #000, 0 -2px #000; "></h1>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath }/resources/images/mealkit13.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 style="color:white; font-family:굴림체; text-shadow:-2px 0 #000, 0 2px #000, 2px 0 #000, 0 -2px #000; "></h1>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath }/resources/images/mealkit14.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 style="color:white; font-family:굴림체; text-shadow:-2px 0 #000, 0 2px #000, 2px 0 #000, 0 -2px #000; "></h1>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		

		<div
			class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"
			id="mainpage">
			<div class="col-md-5 p-lg-5 mx-auto my-5">
				<h1 class="display-4 fw-normal text-light">
					<strong>Korean Food</strong>
				</h1>
				<p class="lead fw-normal text-light">
				</p>
				<a class="btn btn-warning"
					href="${pageContext.request.contextPath }/mealkit/mealkit_k.do"><strong>MORE</strong></a>
			</div>
		</div>
		
		<div
			class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"
			id="mainpage2">
			<div class="col-md-5 p-lg-5 mx-auto my-5">
				<h1 class="display-4 fw-normal text-light">
					<strong>West Food</strong>
				</h1>
				<p class="lead fw-normal text-light">
				</p>
				<a class="btn btn-warning"
					href="${pageContext.request.contextPath }/mealkit/mealkit_w.do"><strong>MORE</strong></a>
			</div>
		</div>
		
		<div
			class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"
			id="mainpage3">
			<div class="col-md-5 p-lg-5 mx-auto my-5">
				<h1 class="display-4 fw-normal text-light">
					<strong>Japanese Food</strong>
				</h1>
				<p class="lead fw-normal text-light">
				</p>
				<a class="btn btn-warning"
					href="${pageContext.request.contextPath }/mealkit/mealkit_j.do"><strong>MORE</strong></a>
			</div>
		</div>
		
		<div
			class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"
			id="mainpage4">
			<div class="col-md-5 p-lg-5 mx-auto my-5">
				<h1 class="display-4 fw-normal text-light">
					<strong>Chinese Food</strong>
				</h1>
				<p class="lead fw-normal text-light">
				</p>
				<a class="btn btn-warning"
					href="${pageContext.request.contextPath }/mealkit/mealkit_c.do"><strong>MORE</strong></a>
			</div>
		</div>

</div>
 
 
 
 
 
<br />

<jsp:include page="../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>








