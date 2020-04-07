class LetterPolicy < ApplicationPolicy
    def index?
        check_access("letter","index")
    end

    def create?
        check_access("letter","create")
    end

    def new?
        check_access("letter","new")
    end

    def show?
        check_access("letter","show")
    end

    def update?
        check_access("letter","edit")
    end

    def destroy?
        check_access("letter","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
