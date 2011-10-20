module ApplicationHelper
    # Renders flash messages
  def render_flash_messages
    s = ''
    flash.each do |k,v|
      s << content_tag(:div, v, :class => "grid_16 cushion flash #{k}")
    end
    s.html_safe
  end

  def render_title
    if current_user.company
      title = current_user.company.name
    else
      title = "PSIssueS"
    end
    subtitle = "Bem Vindo, " +  current_user.email
    s = "<h1>#{title}&nbsp;&nbsp;<span> #{subtitle}</span></h1>"
    s.html_safe
  end

  def render_main_menu
    s = "<ul id='tabs'>"
    s += content_tag(:li, link_to( "Projetos", projects_path ) )
    s += content_tag(:li, link_to( "Chamados", issues_path ) )
    s += content_tag(:li, link_to( "Atividades", issues_path ) )
    s += "</ul>"
    s.html_safe
  end

  def render_project_title(project)
    title = project.name
    subtitle = project.owner.name
    s = "<h1>#{title}&nbsp;&nbsp;<span> #{subtitle}</span></h1>"
    s.html_safe
  end

  def render_project_main_menu( project )
    s = "<ul id='tabs'>"
    s += content_tag(:li, link_to( "Meus Chamados", project_issues_path(project) ) )
    s += content_tag(:li, link_to( "Todos Chamados", project_issues_path(project, :mine => true) ) )
    s += content_tag(:li, link_to( "Entregas", project_milestones_path(project) ) )
    s += content_tag(:li, link_to( "Configurações", edit_project_path(project) ) )
    s += "</ul>"
    s.html_safe
  end

  def how_long_ago(event_date)
    s = content_tag(:abbr,time_ago_in_words(event_date), :title => event_date)
    s.html_safe
  end

end
