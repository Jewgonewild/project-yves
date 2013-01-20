class PostsController < InheritedResources::Base
  before_filter :authenticate_user!, :only => [:edit, :new, :create, :delete]
  respond_to :html, :js, :json

  def create
    #create! {collection_url}
    create! do |format|
      format.js do
        @posts = collection
      end
    end
  end

  def destroy
    destroy! do |format|
      format.js {render :nothing => true}
    end
  end


  private
  def begin_of_association_chain
    current_user
  end

end
