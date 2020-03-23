class CovRecoveredPolicy < ApplicationPolicy
    def index?
        check_access("cov_recovered","index")
    end

    def create?
        check_access("cov_recovered","create")
    end

    def new?
        check_access("cov_recovered","new")
    end

    def show?
        check_access("cov_recovered","show")
    end

    def update?
        check_access("cov_recovered","update")
    end

    def destroy?
        check_access("cov_recovered","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
