# typed: strong

module HubspotSDK
  module Models
    module Account
      class PublicAPIUserActionEvent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::PublicAPIUserActionEvent,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The login activity's unique ID.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(HubspotSDK::Account::ActingUser) }
        attr_reader :acting_user

        sig do
          params(acting_user: HubspotSDK::Account::ActingUser::OrHash).void
        end
        attr_writer :acting_user

        # The type of action taken.
        sig { returns(String) }
        attr_accessor :action

        # The category of the activity.
        sig { returns(String) }
        attr_accessor :category

        # The time that the action occurred at.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The subcategory of the activity.
        sig { returns(T.nilable(String)) }
        attr_reader :sub_category

        sig { params(sub_category: String).void }
        attr_writer :sub_category

        # The ID of the impacted object.
        sig { returns(T.nilable(String)) }
        attr_reader :target_object_id

        sig { params(target_object_id: String).void }
        attr_writer :target_object_id

        sig do
          params(
            id: String,
            acting_user: HubspotSDK::Account::ActingUser::OrHash,
            action: String,
            category: String,
            occurred_at: Time,
            sub_category: String,
            target_object_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The login activity's unique ID.
          id:,
          acting_user:,
          # The type of action taken.
          action:,
          # The category of the activity.
          category:,
          # The time that the action occurred at.
          occurred_at:,
          # The subcategory of the activity.
          sub_category: nil,
          # The ID of the impacted object.
          target_object_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              acting_user: HubspotSDK::Account::ActingUser,
              action: String,
              category: String,
              occurred_at: Time,
              sub_category: String,
              target_object_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
