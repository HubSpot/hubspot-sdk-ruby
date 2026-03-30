# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SimpleUser < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::SimpleUser, HubspotSDK::Internal::AnyHash)
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The email address of the user.
        sig { returns(String) }
        attr_accessor :email

        # The first name of the user.
        sig { returns(String) }
        attr_accessor :first_name

        # The last name of the user.
        sig { returns(String) }
        attr_accessor :last_name

        sig do
          params(
            id: String,
            email: String,
            first_name: String,
            last_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The email address of the user.
          email:,
          # The first name of the user.
          first_name:,
          # The last name of the user.
          last_name:
        )
        end

        sig do
          override.returns(
            { id: String, email: String, first_name: String, last_name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
