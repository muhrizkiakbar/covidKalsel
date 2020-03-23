class CovPositivePolicy < ApplicationPolicy
    def index?
        check_access("cov_positive","index")
    end

    def create?
        check_access("cov_positive","create")
    end

    def new?
        check_access("cov_positive","new")
    end

    def show?
        check_access("cov_positive","show")
    end

    def update?
        check_access("cov_positive","update")
    end

    def destroy?
        check_access("cov_positive","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
