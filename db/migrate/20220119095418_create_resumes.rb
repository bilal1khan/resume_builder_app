class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :linkedin
      t.string :github
      t.string :address
      t.string :educational_qualifications
      t.string :skills
      t.string :cirtificates
      t.string :projects
      t.string :experience

      t.timestamps
    end
  end
end
