class InfoPracticePolicy < ApplicationPolicy
    def index?
        check_access("info_practice","index")
    end

    def create?
        check_access("info_practice","create")
    end

    def new?
        check_access("info_practice","new")
    end

    def show?
        check_access("info_practice","show")
    end

    def update?
        check_access("info_practice","edit")
    end

    def destroy?
        check_access("info_practice","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
