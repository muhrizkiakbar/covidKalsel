class CovOdpProcessedPolicy < ApplicationPolicy
    def index?
        check_access("cov_odp_processed","index")
    end

    def create?
        check_access("cov_odp_processed","create")
    end

    def new?
        check_access("cov_odp_processed","new")
    end

    def show?
        check_access("cov_odp_processed","show")
    end

    def update?
        check_access("cov_odp_processed","edit")
    end

    def destroy?
        check_access("cov_odp_processed","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
