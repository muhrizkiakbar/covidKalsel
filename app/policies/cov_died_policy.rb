class CovDiedPolicy < ApplicationPolicy
    def index?
        check_access("cov_died","index")
    end

    def create?
        check_access("cov_died","create")
    end

    def new?
        check_access("cov_died","new")
    end

    def show?
        check_access("cov_died","show")
    end

    def update?
        check_access("cov_died","edit")
    end

    def destroy?
        check_access("cov_died","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
