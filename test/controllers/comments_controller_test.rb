require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  def setup
    @u = FactoryGirl.create(user:, password:)
    b = Board.create!
    @m = FactoryGirl.create(user:, password:)
    assign_moderator = b(moderator_id: @m.id)
    assign_moderator.save!
    @a = FactoryGirl.create(user:, password:, admin: true)
  end

  def test_users_can_read_comments
    
  end

  def test_users_can_create_comments

  end

  def test_users_can_not_update_or_delete_others_comments
    
  end

  def test_modirators_can_update_or_delete_only_comments_on_their_boards
    
  end

  def test_admin_can_update_and_delete_any_comments

  end

end