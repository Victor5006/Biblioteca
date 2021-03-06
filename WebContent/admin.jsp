<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="pt-br">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="Sistema de biblioteca.">
	    <meta name="author" content="Victor Santos">
	    <title>Admin</title>
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/modern-business.css" rel="stylesheet">
	    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	    <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
   	    <link rel="icon" href="images/favicon.png" type="image/x-icon">
	</head>

	<body>
	
	    <!-- Navigation -->
	    <jsp:include page="includes/adminNavigation.jsp"/>

	    <!-- Page Content -->
	    <div class="container">
	    	<div class="col-lg-12">
	    		<h1 class="page-header text-center">Relatórios</h1>
	    		<div class="text-center">
		    		<a href="RelatorioController?action=alunosInativos" class="btn btn-success">Alunos ativos</a>
		    		<a href="RelatorioController?action=alunosAtivos" class="btn btn-danger">Alunos inativos</a>	    		
	    		</div>
	    	</div>
	    	
	    	<!-- content -->
	
	        <!-- Footer -->
			<jsp:include page="includes/footer.jsp"/>
	    </div>
	
	    <script src="js/jquery.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="js/jquery.dataTables.min.js"></script>
	</body>
</html>