class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def import
    Student.import_file params[:file]
    redirect_to root_url, notice: "Nhanh thế nhỉ :)))"
  end
end
