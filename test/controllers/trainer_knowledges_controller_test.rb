require 'test_helper'

class TrainerKnowledgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trainer_knowledge = trainer_knowledges(:one)
  end

  test "should get index" do
    get trainer_knowledges_url
    assert_response :success
  end

  test "should get new" do
    get new_trainer_knowledge_url
    assert_response :success
  end

  test "should create trainer_knowledge" do
    assert_difference('TrainerKnowledge.count') do
      post trainer_knowledges_url, params: { trainer_knowledge: { script: @trainer_knowledge.script, title: @trainer_knowledge.title } }
    end

    assert_redirected_to trainer_knowledge_url(TrainerKnowledge.last)
  end

  test "should show trainer_knowledge" do
    get trainer_knowledge_url(@trainer_knowledge)
    assert_response :success
  end

  test "should get edit" do
    get edit_trainer_knowledge_url(@trainer_knowledge)
    assert_response :success
  end

  test "should update trainer_knowledge" do
    patch trainer_knowledge_url(@trainer_knowledge), params: { trainer_knowledge: { script: @trainer_knowledge.script, title: @trainer_knowledge.title } }
    assert_redirected_to trainer_knowledge_url(@trainer_knowledge)
  end

  test "should destroy trainer_knowledge" do
    assert_difference('TrainerKnowledge.count', -1) do
      delete trainer_knowledge_url(@trainer_knowledge)
    end

    assert_redirected_to trainer_knowledges_url
  end
end
