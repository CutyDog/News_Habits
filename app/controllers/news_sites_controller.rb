class NewsSitesController < ApplicationController
  before_action :set_news_site, only: [:show, :edit, :update, :destroy]

  # GET /news_sites
  # GET /news_sites.json
  def index
    @news_sites = NewsSite.all
  end

  # GET /news_sites/1
  # GET /news_sites/1.json
  def show
  end

  # GET /news_sites/new
  def new
    @news_site = NewsSite.new
  end

  # GET /news_sites/1/edit
  def edit
  end

  # POST /news_sites
  # POST /news_sites.json
  def create
    @news_site = NewsSite.new(news_site_params)

    respond_to do |format|
      if @news_site.save
        format.html { redirect_to @news_site, notice: 'News site was successfully created.' }
        format.json { render :show, status: :created, location: @news_site }
      else
        format.html { render :new }
        format.json { render json: @news_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_sites/1
  # PATCH/PUT /news_sites/1.json
  def update
    respond_to do |format|
      if @news_site.update(news_site_params)
        format.html { redirect_to @news_site, notice: 'News site was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_site }
      else
        format.html { render :edit }
        format.json { render json: @news_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_sites/1
  # DELETE /news_sites/1.json
  def destroy
    @news_site.destroy
    respond_to do |format|
      format.html { redirect_to news_sites_url, notice: 'News site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_site
      @news_site = NewsSite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_site_params
      params.require(:news_site).permit(:title, :rss_url)
    end
end
