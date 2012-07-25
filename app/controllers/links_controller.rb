class LinksController < ApplicationController
  # GET /links
  def index
    @links = Link.all

  end

  # GET /links/1
  def show
    @link = Link.find(params[:id])


    end
  end

  # GET /links/new
  def new
    @link = Link.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /links/1/edit
  def edit
    @link = Link.find(params[:id])
  end

  # POST /links
  def create
    @link = Link.new(params[:link])

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /links/1
  def update
    @link = Link.find(params[:id])

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /links/1
  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
    end
  end
end
