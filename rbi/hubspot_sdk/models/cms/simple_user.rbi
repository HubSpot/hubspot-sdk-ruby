# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SimpleUser < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::SimpleUser, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :email

        sig { returns(String) }
        attr_accessor :first_name

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
        def self.new(id:, email:, first_name:, last_name:)
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
