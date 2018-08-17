class SchoolClassesController < ApplicationController



def show
end

def new
end

def create
  school_class = SchoolClass.new(params.require[:school_class].permit[:title, :room_number])
  school_class.save 
end

def edit
end

def update
end

end
