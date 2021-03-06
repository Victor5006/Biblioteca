<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="br.com.model.Biblioteca" %>
<%@ page import="br.com.model.Categoria" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>

<html lang="pt-br">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="Sistema de biblioteca.">
	    <meta name="author" content="Victor Santos">
	    <title>Admin - Cadastrar Livro</title>
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/modern-business.css" rel="stylesheet">
	    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	    <link rel="icon" href="images/favicon.png" type="image/x-icon">
	</head>

	<body>
	    <!-- Navigation -->
	    <jsp:include page="includes/adminNavigation.jsp"/>

	    <!-- Page Content -->
	    <div class="container contentMargin">
			<a class="btn btn-success" href="LivroController?action=listarLivros">Listar</a>
			<br><br>
			<form action="LivroController" class="well form-horizontal" method="post" id="registerForm">
				<fieldset>
					<!-- Form Name -->
					<legend class="text-center">Cadastrar Livro</legend>
					
					<!-- Hidden ID -->
					<input type="hidden" name="codLivro" readonly="readonly" value="<c:out value="${livro.codLivro}"/>">
			
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">T�tulo</label>  
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
								<input  name="title" placeholder="T�tulo" class="form-control"  type="text" value="<c:out value="${livro.titulo}"/>">
							</div>
						</div>
					</div>
			
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">Editora</label> 
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
								<input name="publisher" placeholder="Editora" class="form-control"  type="text" value="<c:out value="${livro.editora}"/>">
							</div>
						</div>
					</div>
			
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">Valor</label>  
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
								<input id="price" name="price" placeholder="00.000,00" class="form-control" type="text" maxlength="9" value="<c:out value="${livro.valor}"/>">
							</div>
						</div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group"> 
						<label class="col-md-4 control-label">Categoria</label>
						<div class="col-md-4 selectContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
								<select id="category" name="category" class="form-control selectpicker" data-categoria="<c:out value="${livro.codCategoria}"/>">
									<option value=" " >Selecione uma Categoria</option>
									
									<jsp:useBean id="daoCat" class="br.com.dao.CategoriaDAO"/>
									
									<%
										ArrayList<Categoria> categorias = new ArrayList<Categoria>();
										categorias = daoCat.select();
										for (Categoria categoria: categorias)
										{
									%>
									
									<option value="<% out.print(categoria.getCodCategoria()); %>"><% out.print(categoria.getDescricao()); %></option>
									
									<%  } %>
								</select>
							</div>
						</div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group"> 
						<label class="col-md-4 control-label">Biblioteca</label>
						<div class="col-md-4 selectContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
								<select id="library" name="library" class="form-control selectpicker" data-biblioteca="<c:out value="${livro.codBib}"/>">
									<option value=" " >Selecione a Biblioteca</option>
									
									<jsp:useBean id="daoBib" class="br.com.dao.BibliotecaDAO"/>
									
									<%
										ArrayList<Biblioteca> bibliotecas = new ArrayList<Biblioteca>();
										bibliotecas = daoBib.select();
										for (Biblioteca biblioteca: bibliotecas)
										{
									%>
									
									<option value="<% out.print(biblioteca.getCodBib()); %>"><% out.print(biblioteca.getNome()); %></option>
									
									<%  } %>
								</select>
							</div>
						</div>
					</div>
			
					<!-- Button -->
					<div class="form-group text-center">
						<label class="col-md-4"></label>
						<div class="col-md-4">
							<button type="submit" class="btn btn-warning">Enviar <span class="glyphicon glyphicon-send"></span></button>
						</div>
					</div>
				</fieldset>
			</form>
	
	        <!-- Footer -->
			<jsp:include page="includes/footer.jsp"/>
	    </div>
	
	    <script src="js/jquery.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="js/bootstrapValidator.min.js"></script>
	    <script src="js/jquery.mask.min.js"></script>
		<script>
			$(document).ready(function() {
				$('#registerForm').bootstrapValidator({
			        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			        feedbackIcons: {
			            valid: 'glyphicon glyphicon-ok',
			            invalid: 'glyphicon glyphicon-remove',
			            validating: 'glyphicon glyphicon-refresh'
			        },
			        fields: {
			            title: {
			                validators: {
			                        notEmpty: {
			                        message: 'Preencha o t�tulo do livro.'
			                    }
			                }
			            },
			             publisher: {
			                validators: {
			                    notEmpty: {
			                        message: 'Preencha o nome da editora do livro.'
			                    }
			                }
			            },
			            price: {
			                validators: {
			                    notEmpty: {
			                        message: 'Preencha o pre�o do livro.'
			                    }
			                }
			            },
			            category: {
			            	validators: {
			            		notEmpty: {
			            			message: 'Selecione a categoria do livro.'
			            		}
			            	}
			            },
			            library: {
			            	validators: {
			            		notEmpty: {
			            			message: 'Selecione a biblioteca do livro.'
			            		}
			            	}
			            }
	            	}
		        })
		        .on('success.form.bv', function(e) {
		            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
		                $('#registerForm').data('bootstrapValidator').resetForm();
		
		            // Prevent form submission
		            e.preventDefault();
		
		            // Get the form instance
		            var $form = $(e.target);
		
		            // Get the BootstrapValidator instance
		            var bv = $form.data('bootstrapValidator');
		
		            // Use Ajax to submit form data
		            $.post($form.attr('action'), $form.serialize(), function(result) {
		                console.log(result);
		            }, 'json');
		        });
			});
		</script>
		<script>			
			$(document).ready(function() {
				$("#price").mask("00.000,00", {reverse: true});
				
				var optionID = $("#category").data("categoria");
				$("#category option[value='"+optionID+"']").attr("selected", "selected");
				
				optionID = $("#library").data("biblioteca");
				$("#library option[value='"+optionID+"']").attr("selected", "selected");
			});
		</script>
	</body>
</html>