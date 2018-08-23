class SocksController < ApplicationController
  def index
    @socks = Sock.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def show
    @sock = Sock.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
    sock = Sock.new(
      color: params[:color],
      department: params[:department],
      size: params[:size],
      pattern: params[:pattern]
      )
    sock.save
    redirect_to "/socks/#{sock.id}"
  end

  def edit
    @sock = Sock.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    sock = Sock.find_by(id: params[:id])
    sock.update(
      color: params[:color],
      department: params[:department],
      size: params[:size],
      pattern: params[:pattern]
      )
    redirect_to "/socks/#{sock.id}"
  end

  def destroy
    sock = Sock.find_by(id: params[:id])
    sock.destroy
    redirect_to "/socks"
  end
end

