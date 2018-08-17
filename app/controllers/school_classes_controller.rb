class SchoolClassesController < ApplicationController



def show
end

def new
end

def create
  @school_class = SchoolClass.new(params.require[:school_class].permit[:title, :room_number])
  @school_class.save
  redirect_to school_class_path(@school_class)
end

def edit
end

def update
end

private
def post_params(*args)
  params.require(:post).permit(*args)
end

end
