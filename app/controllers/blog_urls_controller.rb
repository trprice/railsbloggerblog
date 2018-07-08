class BlogUrlsController < ApplicationController
  before_action :set_blog_url, only: [:show, :edit, :update, :destroy]

  # GET /blog_urls
  # GET /blog_urls.json
  def index
    @blog_urls = BlogUrl.all
  end

  # GET /blog_urls/1
  # GET /blog_urls/1.json
  def show
  end

  # GET /blog_urls/new
  def new
    @blog_url = BlogUrl.new
  end

  # GET /blog_urls/1/edit
  def edit
  end

  # POST /blog_urls
  # POST /blog_urls.json
  def create
    @blog_url = BlogUrl.new(blog_url_params)
    @blog_url.url = blog_url_params[:url]

    blog = BlogsHelper.get_blogger_by_url(@blog_url.url)
    @blog_url.blog_id = blog.blog_id

    respond_to do |format|
      if @blog_url.save
        format.html { redirect_to @blog_url, notice: 'Blog url was successfully created.' }
        format.json { render :show, status: :created, location: @blog_url }
      else
        format.html { render :new }
        format.json { render json: @blog_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_urls/1
  # PATCH/PUT /blog_urls/1.json
  def update
    respond_to do |format|
      if @blog_url.update(blog_url_params)
        format.html { redirect_to @blog_url, notice: 'Blog url was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_url }
      else
        format.html { render :edit }
        format.json { render json: @blog_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_urls/1
  # DELETE /blog_urls/1.json
  def destroy
    @blog_url.destroy
    respond_to do |format|
      format.html { redirect_to blog_urls_url, notice: 'Blog url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_url
      @blog_url = BlogUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_url_params
      params.require(:blog_url).permit(:blog_id, :url)
    end
end
