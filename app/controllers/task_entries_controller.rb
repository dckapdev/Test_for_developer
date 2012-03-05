class TaskEntriesController < ApplicationController
  # GET /task_entries
  # GET /task_entries.xml
  def index
    @task_entries = TaskEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_entries }
    end
  end

  def pending_tasks    
    @task_entries = TaskEntry.pending_tasks    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_entries }
    end
  end

  # GET /task_entries/1
  # GET /task_entries/1.xml
  def show
    @task_entry = TaskEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task_entry }
    end
  end

  # GET /task_entries/new
  # GET /task_entries/new.xml
  def new
    @task_entry = TaskEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_entry }
    end
  end

  # GET /task_entries/1/edit
  def edit
    @task_entry = TaskEntry.find(params[:id])
  end

  # POST /task_entries
  # POST /task_entries.xml
  def create
    @task_entry = TaskEntry.new(params[:task_entry])

    respond_to do |format|
      if @task_entry.save
        format.html { redirect_to(@task_entry, :notice => 'Task entry was successfully created.') }
        format.xml  { render :xml => @task_entry, :status => :created, :location => @task_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_entries/1
  # PUT /task_entries/1.xml
  def update
    @task_entry = TaskEntry.find(params[:id])

    respond_to do |format|
      if @task_entry.update_attributes(params[:task_entry])
        format.html { redirect_to(@task_entry, :notice => 'Task entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_entries/1
  # DELETE /task_entries/1.xml
  def destroy
    @task_entry = TaskEntry.find(params[:id])
    @task_entry.destroy

    respond_to do |format|
      format.html { redirect_to(task_entries_url) }
      format.xml  { head :ok }
    end
  end
end
