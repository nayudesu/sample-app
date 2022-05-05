class ListsController < ApplicationController
  def new
    @list=List.new
  end

  def create
#1&2 データを受け取り新規登録するためのインスタンス作成
    list=List.new(list_params)
    
    list.save
    
    redirect_to'/top'
  end
  
   def index
     @lists=List.all
   end

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
