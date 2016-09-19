class CustomerPolicy < ApplicationPolicy
	class Scope < Scope
		def resolve
			scope.where(user: user)
		end
	end

	def index?
		user.admin? or user.unit?
	end

	def destroy?
		user.admin?
	end

	def update?
		user.admin?
	end
end
