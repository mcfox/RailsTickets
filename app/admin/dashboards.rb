ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.

  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  section "Recent Posts", :priority => 1 do
    ul do
      Issue.limit(5).collect do |issue|
        li link_to(issue.subject + '?', admin_issue_path(issue))
      end
    end
  end

  section "Opened Posts", :priority => 10 do
    ul do
      Issue.where(:status_id => 1).limit(5).collect do |issue|
        li link_to(issue.subject, admin_issue_path(issue))
      end
    end
  end

  section "Opened Posts", :priority => 10 do
    ul do
      Issue.where(:status_id => 1).limit(5).collect do |issue|
        li link_to(issue.subject, admin_issue_path(issue))
      end
    end
  end

  section "Opened Posts", :priority => 10 do
    ul do
      Issue.where(:status_id => 1).limit(5).collect do |issue|
        li link_to(issue.subject, admin_issue_path(issue))
      end
    end
  end

  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end

  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
