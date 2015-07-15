require 'test_helper'
require 'pry'


class CommentsControllerTest < ActionController::TestCase
  
  def setup
  end

  def test_users_can_read_comments
    u = FactoryGirl.create(:user)
    sign_in u
    c = FactoryGirl.create(:comment)
    get :index, {board_id: c.post.board_id, post_id: c.post_id}
    b = response.body
    assert_equal 200, response.code
    assert true, b.include?(c.body)
  end

  def test_users_can_create_comments

  end

  def test_users_can_not_update_or_delete_others_comments
    #     item = Item.first

    # sellers_abilities = Ability.new item.seller
    # assert sellers_abilities.can? :update, item

    # ability = Ability.new
    # refute ability.can? :update, item
  end

  def test_modirators_can_update_or_delete_only_comments_on_their_boards
    
  end

  def test_admin_can_update_and_delete_any_comments

  end

end