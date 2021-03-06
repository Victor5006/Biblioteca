<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>

<html lang="pt-br">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="Sistema de biblioteca.">
	    <meta name="author" content="Victor Santos">
	    <title>Admin - Cadastrar Aluno</title>
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
			<a class="btn btn-success" href="AlunoController?action=listarAlunos">Listar</a>
			<br><br>
			<form action="AlunoController" id="registerForm" class="well form-horizontal" method="post">
				<fieldset>
					<!-- Form Name -->
					<legend class="text-center">Cadastrar Aluno</legend>
					
					<!-- Hidden ID -->
					<input type="hidden" name="codMatricula" readonly="readonly" value="<c:out value="${aluno.codMatricula}"/>">
			
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">Nome</label>  
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<input name="firstName" placeholder="Jo�o" class="form-control" type="text" value="<c:out value="${aluno.nome}"/>">
							</div>
						</div>
					</div>
			
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">Sobrenome</label> 
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<input name="lastName" placeholder="Silva" class="form-control" type="text" value="<c:out value="${aluno.sobrenome}"/>">
							</div>
						</div>
					</div>
			
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">E-Mail</label>  
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
								<input name="email" placeholder="joao@joao.com" class="form-control" type="text" value="<c:out value="${aluno.email}"/>">
							</div>
						</div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">Endere�o</label>  
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
								<input name="address" placeholder="Av. Borges de Medeiros" class="form-control" type="text" value="<c:out value="${aluno.endereco}"/>">
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
			            firstName: {
			                validators: {
			                        stringLength: {
		                        	message: 'O nome deve conter no m�nimo 2 caracteres.',
			                        min: 2,
			                    },
			                        notEmpty: {
			                        message: 'Preencha o nome do aluno.'
			                    }
			                }
			            },
			             lastName: {
			                validators: {
			                     stringLength: {
			                    	message: 'O sobrenome deve conter no m�nimo 2 caracteres.',
			                        min: 2,
			                    },
			                    notEmpty: {
			                        message: 'Preencha o sobrenome do aluno.'
			                    }
			                }
			            },
			            email: {
			                validators: {
			                    notEmpty: {
			                        message: 'Preencha o e-mail do aluno.'
			                    },
			                    emailAddress: {
			                        message: 'Este endere�o de e-mail est� inv�lido.'
			                    }
			                }
			            },
			            address: {
			            	validators: {
			            		notEmpty: {
			            			message: 'Preencha o endere�o do aluno.'
			            		}
			            	}
			            }
	            	}
		        })
		        .on('success.form.bv', function(e) {
		            //$('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
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
	</body>
</html>