class CovOdpPolicy < ApplicationPolicy
    def index?
        check_access("cov_odp","index")
    end

    def create?
        check_access("cov_odp","create")
    end

    def new?
        check_access("cov_odp","new")
    end

    def show?
        check_access("cov_odp","show")
    end

    def update?
        check_access("cov_odp","edit")
    end

    def destroy?
        check_access("cov_odp","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
