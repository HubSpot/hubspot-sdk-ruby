# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicTeam < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Crm::PublicTeam, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Boolean) }
        attr_accessor :primary

        sig do
          params(id: String, name: String, primary: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(id:, name:, primary:)
        end

        sig do
          override.returns({ id: String, name: String, primary: T::Boolean })
        end
        def to_hash
        end
      end
    end
  end
end
