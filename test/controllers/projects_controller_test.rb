require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    sign_in
  end

  test "Shoud GET index => /projects" do
    create_list(:project, 5)

    get :index

    assert_equal 5, assigns(:projects).count
  end

  test "Should GET index => /projects with page params" do
    create_list(:project, 16)

    get :index

    assert_equal 15, assigns(:projects).count
  end

  test "Should GET index => /projects with page params & archived" do
    create_list(:project, 10)
    create_list(:project, 5, :with_archive)

    get :index

    assert_equal 10, assigns(:projects).count
  end

  test "Should GET show => /projects/:id" do
    project = create(:project)

    get :show, id: project.id

    assert_response :success
  end

  test "Should POST create => /projects" do
    assert_difference('Project.count') do
      post :create, project: {
        title: "Project", 
        description: "Go Go Go."
      }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "Should PATCH update => /projects/:id" do
    project = create(:project)

    patch :update, id: project.id, project: { title: "WandoCL" }

    p = Project.find(project.id)

    assert_equal "WandoCL", p.title
    assert_redirected_to project_path(assigns(:project))
  end

end
