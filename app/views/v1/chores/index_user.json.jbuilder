json.array! @v1_chore do |each_chore|
    json.partial! 'v1/chores/chore', chore: each_chore
    #add group
    group = Group.where(id: each_chore.group.id).first
    if group.present?
      json.group_image group.image_file
    else
      json.group_image nil
    end
end
