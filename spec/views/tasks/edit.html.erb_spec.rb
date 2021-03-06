require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :body => "MyString",
      :completed => false
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_body[name=?]", "task[body]"

      assert_select "input#task_completed[name=?]", "task[completed]"
    end
  end
end
