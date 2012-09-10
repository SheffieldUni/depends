class RelationshipGroupsController < ApplicationController

  expose(:relationship_groups) {RelationshipGroup.all}
  expose(:relationship_group)
  
  def new
  end

  def create
    if relationship_group.save
      flash[:notice] = "Relationship Group successfully created"
      redirect_to relationship_groups_path
    else
      render :action => 'new'
    end
  end

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => relationship_groups }
      format.json { render :json => relationsip_groups }
    end
  end

  def show
  end

  def edit
  end

  def update
    if relationship_group.update_attributes(params[:relationship_group])
      flash[:notice] = 'Relationship Group updated'
      redirect_to relationship_groups_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    relationship_group.destroy
    flash[:notice] = "Relationship Group deleted"
    redirect_to relationship_groups_path
  end
end