# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicListPermissions < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicListPermissions,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Integer]) }
        attr_accessor :teams_with_edit_access

        sig { returns(T::Array[Integer]) }
        attr_accessor :users_with_edit_access

        sig do
          params(
            teams_with_edit_access: T::Array[Integer],
            users_with_edit_access: T::Array[Integer]
          ).returns(T.attached_class)
        end
        def self.new(teams_with_edit_access:, users_with_edit_access:)
        end

        sig do
          override.returns(
            {
              teams_with_edit_access: T::Array[Integer],
              users_with_edit_access: T::Array[Integer]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
