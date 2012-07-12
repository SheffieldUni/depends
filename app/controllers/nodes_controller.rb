class NodesController < ApplicationController

  expose(:nodes) {Node.all}
  expose(:node)

  def new
  end

  def create
    if node.save
      flash[:notice] = "Node successfully created"
      redirect_to nodes_path
    else
      render :action => 'new'
    end
  end

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => nodes }
      format.json { render :json => nodes }
    end
  end

  def show
  end

  def edit
  end

  def update
    if node.update_attributes(params[:node])
      flash[:notice] = 'Node updated'
      redirect_to nodes_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    node.destroy
    flash[:notice] = "Node deleted"
    redirect_to nodes_path
  end

end
