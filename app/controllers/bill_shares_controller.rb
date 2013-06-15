class BillSharesController < ApplicationController
  # GET /bill_shares
  # GET /bill_shares.json
  def index
    @bill_shares = BillShare.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_shares }
    end
  end

  # GET /bill_shares/1
  # GET /bill_shares/1.json
  def show
    @bill_share = BillShare.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_share }
    end
  end

  # GET /bill_shares/new
  # GET /bill_shares/new.json
  def new
    @bill_share = BillShare.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_share }
    end
  end

  # GET /bill_shares/1/edit
  def edit
    @bill_share = BillShare.find(params[:id])
  end

  # POST /bill_shares
  # POST /bill_shares.json
  def create
    @bill_share = BillShare.new(params[:bill_share])

    respond_to do |format|
      if @bill_share.save
        format.html { redirect_to @bill_share, notice: 'Bill share was successfully created.' }
        format.json { render json: @bill_share, status: :created, location: @bill_share }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_shares/1
  # PUT /bill_shares/1.json
  def update
    @bill_share = BillShare.find(params[:id])

    respond_to do |format|
      if @bill_share.update_attributes(params[:bill_share])
        format.html { redirect_to @bill_share, notice: 'Bill share was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_shares/1
  # DELETE /bill_shares/1.json
  def destroy
    @bill_share = BillShare.find(params[:id])
    @bill_share.destroy

    respond_to do |format|
      format.html { redirect_to bill_shares_url }
      format.json { head :no_content }
    end
  end
end
