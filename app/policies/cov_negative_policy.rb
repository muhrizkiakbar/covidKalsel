class CovNegativePolicy < ApplicationPolicy
    def index?
        check_access("cov_negative","index")
    end

    def create?
        check_access("cov_negative","create")
    end

    def new?
        check_access("cov_negative","new")
    end

    def show?
        check_access("cov_negative","show")
    end

    def update?
        check_access("cov_negative","update")
    end

    def destroy?
        check_access("cov_negative","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
