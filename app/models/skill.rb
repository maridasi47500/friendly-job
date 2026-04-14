class Skill < ApplicationRecord
attr_accessor :job_id
after_create do
if job_id.to_i > 0
Job.find(job_id).skills << self
end
end
end
