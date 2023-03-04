class BooksController < ApplicationController
 def new

 end

 def create
     @model_class_name = ModelClassName.new(params[:model_class_name])
     if @model_class_name.save
             flash[:notice] = 'ModelClassName was successfully created.'
     respond_to do |wants|

         else

         end
     end
 end

 def index
     @model_class_name = ModelClassName.all

 end

 def show
     @model_class_name = ModelClassName.find(params[:id])

 end

 def edit
     @model_class_name = ModelClassName.find(params[:id])
 end

 def update
     @model_class_name = ModelClassName.find(params[:id])
             wants.html { redirect_to(@model_class_name) }
             wants.xml  { head :ok }
              respond_to do |wants|
     end
 end
 def destroy
     @model_class_name = ModelClassName.find(params[:id])
     @model_class_name.destroy

     respond_to do |wants|
 end

end

private

  def books_params
    params.require(:list).permit(:title, :body, :image)
  end
end
