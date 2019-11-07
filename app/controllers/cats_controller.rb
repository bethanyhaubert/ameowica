class CatController< ApplicationController
  def show
    @cat = Cat.find(params['cat_id'])
  end
end
