module ApplicationHelper
  def include_date_picker(context)
		content_for :head, render(:partial => 'shared/date_picker', :object => context)
		nil
	end

  def include_date_pickers
    content_for :head, render(:partial => 'shared/date_pickers')
  end
end
