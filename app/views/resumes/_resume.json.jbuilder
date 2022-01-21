json.extract! resume, :id, :first_name, :last_name, :email, :phone, :linkedin, :github, :address, :educational_qualifications, :skills, :cirtificates, :projects, :experience, :created_at, :updated_at
json.url resume_url(resume, format: :json)
