$(document).ready( function() {
	
	//Validação Cadastro de Cliente
	
	$("#NewClient").validate({
		// Define as regras
		rules:{
			Usuario:{
				required: true, 
				minlength: 5
			},
			
			Senha:{
				required: true, 
				minlength: 6
			},
			
			RepitaSenha:{
				required: true, 
				minlength: 6
			},
			
			NomeCompleto:{
				required: true, 
				minlength: 10
			},
			
			Telefone:{
				required: true, 
				minlength: 10
			},
			
			Celular:{
				required: true, 
				minlength: 10
			},
			
			Endereco:{
				required: true 
				
			},
			
			Numero:{
				required: true
				
			},
			
			Bairro:{
				required: true
				
			},
			
			Cep:{
				required: true, 
				minlength: 10
			},
			
			Estado:{
				required: true 
				
			},
			
			Cidade:{
				required: true 
				
			},
			
			
			Email:{
				required: true, 
				email: true
			},
			
			DataNascimento:{
				required: true, 
				minlength: 10
			},
			
			Rg:{
				required: true, 
				minlength: 10
			},
			
			Cpf:{
				required: true, 
				minlength: 11
			},
			
			Cnjp:{
				required: true, 
				minlength: 14
			},
			campoMensagem:{
				// campoMensagem será obrigatório (required) e terá tamanho mínimo (minLength)
				required: true, minlength: 2
			}
		},
		// Define as mensagens de erro para cada regra
		messages:{
			Usuario:{
				required: "Digite o seu Usuario",
				minlength: "O seu usuario deve conter, no mínimo, 5 caracteres"
			},
			
			Senha:{
				required: "Digite o sua Senha",
				minlength: "O seu usuario deve conter, no mínimo, 6 caracteres"
			},
			
			RepitaSenha:{
				required: "Repita sua Senha",
				minlength: "Voce deve Repetir sua Senha"
			},
			
			NomeCompleto:{
				required: "Digite o seu Nome Completo",
				minlength: "O seu nome deve conter, no mínimo, 10 caracteres"
			},
			
			Telefone:{
				required: "Digite o seu Telefone",
				minlength: "O seu Telefone deve conter, no mínimo, 10 caracteres"
			},
			
			Celular:{
				required: "Digite o seu Celular",
				minlength: "O seu Celular deve conter, no mínimo, 10 caracteres"
			},
			
			Endereco:{
				required: "Digite o seu Endereço"
				
			},
			
			Numero:{
				required: "Digite o seu Numero"
				
			},
			
			Bairro:{
				required: "Digite o seu Bairro"
				
			},
			
			Cep:{
				required: "Digite o seu CEP",
				minlength: "O seu CEP deve conter, no mínimo, 10 caracteres"
			},
			
			Estado:{
				required: "Digite o seu CEP"
				
			},
			
			Cidade:{
				required: "Escolha uma cidade"
				
			},
			
			Email:{
				required: "Digite o seu e-mail para contato",
				email: "Digite um e-mail válido"
			},
			
			DataNascimento:{
				required: "Digite o sua data de nascimento",
				minlength: "a Sua data de nascimento deve conter, no mínimo, 10 caracteres, dd/mm/aaaa."
			},
			
			Rg:{
				required: "Digite o seu rg",
				minlength: "O seu RG deve conter, no mínimo, 10 caracteres"
			},
			
			Cpf:{
				required: "Digite o seu CPF",
				minlength: "O seu CPF deve conter, no mínimo, 11 caracteres"
			},
			
			Cnjp:{
				required: "Digite o seu CNPJ",
				minlength: "O seu CEP deve conter, no mínimo, 14 caracteres"
			},
			campoMensagem:{
				required: "Digite a sua mensagem",
				minlength: "A sua mensagem deve conter, no mínimo, 2 caracteres"
			}
		}
	});
	
	//Validação Cadastro de Funcionario
	
	$("#NewFunc").validate({
		// Define as regras
		rules:{
			Usuario:{
				required: true, 
				minlength: 5
			},
			
			Senha:{
				required: true, 
				minlength: 6
			},
			
			RepitaSenha:{
				required: true, 
				minlength: 6
			},
			
			NomeCompleto:{
				required: true, 
				minlength: 10
			},
			
			Telefone:{
				required: true, 
				minlength: 10
			},
			
			Celular:{
				required: true, 
				minlength: 10
			},
			
			Endereco:{
				required: true 
				
			},
			
			Numero:{
				required: true
				
			},
			
			Bairro:{
				required: true
				
			},
			
			Cep:{
				required: true, 
				minlength: 10
			},
			
			Estado:{
				required: true 
				
			},
			
			Cidade:{
				required: true 
				
			},
			
			
			Email:{
				required: true, 
				email: true
			},
			
			DataNascimento:{
				required: true, 
				minlength: 10
			},
			
			Rg:{
				required: true, 
				minlength: 10
			},
			
			Cpf:{
				required: true, 
				minlength: 11
			},
			
			Cnjp:{
				required: true, 
				minlength: 14
			},
			campoMensagem:{
				// campoMensagem será obrigatório (required) e terá tamanho mínimo (minLength)
				required: true, minlength: 2
			}
		},
		// Define as mensagens de erro para cada regra
		messages:{
			Usuario:{
				required: "Digite o seu Usuario",
				minlength: "O seu usuario deve conter, no mínimo, 5 caracteres"
			},
			
			Senha:{
				required: "Digite o sua Senha",
				minlength: "O seu usuario deve conter, no mínimo, 6 caracteres"
			},
			
			RepitaSenha:{
				required: "Repita sua Senha",
				minlength: "Voce deve Repetir sua Senha"
			},
			
			NomeCompleto:{
				required: "Digite o seu Nome Completo",
				minlength: "O seu nome deve conter, no mínimo, 10 caracteres"
			},
			
			Telefone:{
				required: "Digite o seu Telefone",
				minlength: "O seu Telefone deve conter, no mínimo, 10 caracteres"
			},
			
			Celular:{
				required: "Digite o seu Celular",
				minlength: "O seu Celular deve conter, no mínimo, 10 caracteres"
			},
			
			Endereco:{
				required: "Digite o seu Endereço"
				
			},
			
			Numero:{
				required: "Digite o seu Numero"
				
			},
			
			Bairro:{
				required: "Digite o seu Bairro"
				
			},
			
			Cep:{
				required: "Digite o seu CEP",
				minlength: "O seu CEP deve conter, no mínimo, 10 caracteres"
			},
			
			Estado:{
				required: "Digite o seu CEP"
				
			},
			
			Cidade:{
				required: "Escolha uma cidade"
				
			},
			
			Email:{
				required: "Digite o seu e-mail para contato",
				email: "Digite um e-mail válido"
			},
			
			DataNascimento:{
				required: "Digite o sua data de nascimento",
				minlength: "a Sua data de nascimento deve conter, no mínimo, 10 caracteres, dd/mm/aaaa."
			},
			
			Rg:{
				required: "Digite o seu rg",
				minlength: "O seu RG deve conter, no mínimo, 10 caracteres"
			},
			
			Cpf:{
				required: "Digite o seu CPF",
				minlength: "O seu CPF deve conter, no mínimo, 11 caracteres"
			},
			
			Cnjp:{
				required: "Digite o seu CNPJ",
				minlength: "O seu CEP deve conter, no mínimo, 14 caracteres"
			}
			}
		
	});
	
	//Validação Cadastro de Produto
	
	$("#NewFunc").validate({
		// Define as regras
		rules:{
			NomeProduto:{
				required: true 
				
			},
			
			SiglaProduto:{
				required: true, 
				minlength: 2
			},
			
			IMGProduto:{
				required: true 
				
			}
			
			
			
		},
		// Define as mensagens de erro para cada regra
		messages:{
			NomeProduto:{
				required: "Digite o Nome do Produto"
				
			},
			
			SiglaProduto:{
				required: "Digite Sigla do Produto",
				minlength: "Sua sigla deve conter, no mínimo, 2 caracteres"
			},
			
			IMGProduto:{
				required: "Escolha uma Imagem"
				
			}
			
			
			}
		
	});
	
//Validação Cadastro de Ticket
	
	$("#NewFunc").validate({
		// Define as regras
		rules:{
			DescricaoTicket:{
				required: true 
				
			}
			
				
		},
		// Define as mensagens de erro para cada regra
		messages:{
			DescricaoTicket:{
				required: "Digite uma descrição para este Ticket!!!"
				
			}
			
			
			
			
			}
		
	});
	
});