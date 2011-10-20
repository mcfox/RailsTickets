# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|


  # Define the primary navigation
  navigation.items do |primary|
    primary.item :chamados, 'Chamados', issues_path do |sub1|
      sub1.item :chamados1, 'Meus', issues_path(:status => 1, :user => current_user.id )
	    sub1.item :chamados2, 'Abertos', issues_path(:status => 1 )
	    sub1.item :chamados3, 'Resolvidos', issues_path(:status => 2 )
	    sub1.item :chamados4, 'Fechados', issues_path(:status => 3 )
		end
    primary.item :home, 'Projetos', projects_path do |sub1|
	    sub1.item :home1, 'Meus', projects_path(:status => 1, :user => current_user.id )
	    sub1.item :home2, 'Ativos', projects_path(:status => 1)
	    sub1.item :home3, 'Inativos', projects_path(:status => 2)
		end
    primary.item :team, 'Clientes e Usuários', companies_path
    primary.item :account, 'Sua Conta', accounts_path
  end

end