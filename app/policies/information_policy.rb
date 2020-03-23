class InformationPolicy < ApplicationPolicy
    def index?
        check_access("information","index")
    end

    def create?
        check_access("information","create")
    end

    def new?
        check_access("information","new")
    end

    def show?
        check_access("information","show")
    end

    def update?
        check_access("information","update")
    end

    def destroy?
        check_access("information","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
