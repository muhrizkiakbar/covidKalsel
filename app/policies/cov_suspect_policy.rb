class CovSuspectPolicy < ApplicationPolicy
    def index?
        check_access("cov_suspect","index")
    end

    def create?
        check_access("cov_suspect","create")
    end

    def new?
        check_access("cov_suspect","new")
    end

    def show?
        check_access("cov_suspect","show")
    end

    def update?
        check_access("cov_suspect","edit")
    end

    def destroy?
        check_access("cov_suspect","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
