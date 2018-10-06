class Account < ActiveRecord::Base
	has_many :memberships, dependent: :destroy
	has_many :users, through: :memberships

	
	validates :name, :subdomain, presence: true
	validates :subdomain,
		format: { with: /\A[a-z][a-z0-9\-]+[a-z0-9]\Z/ },
        uniqueness: true


end
