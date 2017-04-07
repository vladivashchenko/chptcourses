module ApplicationHelper

  # Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title = '')                     # Method def, optional arg
    base_title = "Підготовчі курси ЧПТ"  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      page_title + " | " + base_title                 # String concatenation
    end
  end
  def unactivated_users
    @unactivated_users = User.where(activated: false).count
  end
  def  activated_users
    @activated_users = User.where(activated: true, admin: false).count
  end
end
