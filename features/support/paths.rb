module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
      when /edit page for that task list/
        raise 'no task list' unless @task_list
        edit_task_list_path(@task_list)
      when /page for that task list/
        raise 'no task list' unless @task_list
        task_list_path(@task_list)
      when /edit page for the (\d+)(?:st|nd|rd|th) task list/
        raise 'no task lists' unless @task_lists
        nth_task_list = @task_lists[$1.to_i - 1]
        edit_task_list_path(nth_task_list)
      when /page for the (\d+)(?:st|nd|rd|th) task list/
        raise 'no task lists' unless @task_lists
        nth_task_list = @task_lists[$1.to_i - 1]
        task_list_path(nth_task_list)

      when /edit page for that name:string/
        raise 'no name:string' unless @name:string
        edit_name:string_path(@name:string)
      when /page for that name:string/
        raise 'no name:string' unless @name:string
        name:string_path(@name:string)
      when /edit page for the (\d+)(?:st|nd|rd|th) name:string/
        raise 'no name:strings' unless @name:strings
        nth_name:string = @name:strings[$1.to_i - 1]
        edit_name:string_path(nth_name:string)
      when /page for the (\d+)(?:st|nd|rd|th) name:string/
        raise 'no name:strings' unless @name:strings
        nth_name:string = @name:strings[$1.to_i - 1]
        name:string_path(nth_name:string)


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
