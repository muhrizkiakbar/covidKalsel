class CovPdpPolicy < ApplicationPolicy
    def index?
        check_access("cov_pdp","index")
    end

    def create?
        check_access("cov_pdp","create")
    end

    def new?
        check_access("cov_pdp","new")
    end

    def show?
        check_access("cov_pdp","show")
    end

    def update?
        check_access("cov_pdp","update")
    end

    def destroy?
        check_access("cov_pdp","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
