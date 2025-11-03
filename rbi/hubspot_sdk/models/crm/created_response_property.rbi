# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CreatedResponseProperty < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CreatedResponseProperty,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :created_resource_id

        # Defines a property
        sig { returns(HubspotSDK::Property) }
        attr_reader :entity

        sig { params(entity: HubspotSDK::Property::OrHash).void }
        attr_writer :entity

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        sig do
          params(
            created_resource_id: String,
            entity: HubspotSDK::Property::OrHash,
            location: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_resource_id:,
          # Defines a property
          entity:,
          location: nil
        )
        end

        sig do
          override.returns(
            {
              created_resource_id: String,
              entity: HubspotSDK::Property,
              location: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
