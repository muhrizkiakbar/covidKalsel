class TelegramChatPolicy < ApplicationPolicy
    def index_chat?
        check_access("telegram_chat","index_chat")
    end

    def index_send_chat?
        check_access("telegram_chat","index_send_chat")
    end

    def create?
        check_access("city","create")
    end

    def new?
        check_access("city","new")
    end

    def show?
        check_access("city","show")
    end

    def update?
        check_access("city","edit")
    end

    def destroy?
        check_access("city","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
