# typed: strong

module HubspotSDK
  module Models
    module Account
      class ActingUser < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::ActingUser,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The user's unique ID.
        sig { returns(Integer) }
        attr_accessor :user_id

        # The email address of the user who performed the action.
        sig { returns(T.nilable(String)) }
        attr_reader :user_email

        sig { params(user_email: String).void }
        attr_writer :user_email

        sig do
          params(user_id: Integer, user_email: String).returns(T.attached_class)
        end
        def self.new(
          # The user's unique ID.
          user_id:,
          # The email address of the user who performed the action.
          user_email: nil
        )
        end

        sig { override.returns({ user_id: Integer, user_email: String }) }
        def to_hash
        end
      end
    end
  end
end
