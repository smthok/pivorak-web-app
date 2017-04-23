module MembersHelper
  def edit_profile_link
    link_to t('members.edit_profile'), edit_profile_path
  end
end
