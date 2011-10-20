class ProjectAccessesController < ApplicationController
  # GET /project_accesses
  # GET /project_accesses.xml
  def index
    @project_accesses = ProjectAccess.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_accesses }
    end
  end

  # GET /project_accesses/1
  # GET /project_accesses/1.xml
  def show
    @project_access = ProjectAccess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_access }
    end
  end

  # GET /project_accesses/new
  # GET /project_accesses/new.xml
  def new
    @project_access = ProjectAccess.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_access }
    end
  end

  # GET /project_accesses/1/edit
  def edit
    @project_access = ProjectAccess.find(params[:id])
  end

  # POST /project_accesses
  # POST /project_accesses.xml
  def create
    @project_access = ProjectAccess.new(params[:project_access])

    respond_to do |format|
      if @project_access.save
        format.html { redirect_to(@project_access, :notice => 'Project access was successfully created.') }
        format.xml  { render :xml => @project_access, :status => :created, :location => @project_access }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_access.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_accesses/1
  # PUT /project_accesses/1.xml
  def update
    @project_access = ProjectAccess.find(params[:id])

    respond_to do |format|
      if @project_access.update_attributes(params[:project_access])
        format.html { redirect_to(@project_access, :notice => 'Project access was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_access.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_accesses/1
  # DELETE /project_accesses/1.xml
  def destroy
    @project_access = ProjectAccess.find(params[:id])
    @project_access.destroy

    respond_to do |format|
      format.html { redirect_to(project_accesses_url) }
      format.xml  { head :ok }
    end
  end
end
