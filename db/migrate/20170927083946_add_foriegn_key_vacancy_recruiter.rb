class AddForiegnKeyVacancyRecruiter < ActiveRecord::Migration
  def change
    add_reference :vacancies, :recruiter, index: true, foreign_key: true
  end
end
