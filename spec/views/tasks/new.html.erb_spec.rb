require 'rails_helper'

RSpec.describe "tasks/new", :type => :view do
  before(:each) do
    assign(:task, Task.new(
      :body => "MyString",
      :completed => false
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_body[name=?]", "task[body]"

      assert_select "input#task_completed[name=?]", "task[completed]"
    end
  end
end
