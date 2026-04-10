# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class ObjectCoordinates < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::ObjectCoordinates,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the object.
          sig { returns(Integer) }
          attr_accessor :object_id_

          # The type identifier for the object.
          sig { returns(String) }
          attr_accessor :object_type_id

          # The unique identifier for the portal.
          sig { returns(Integer) }
          attr_accessor :portal_id

          sig do
            params(
              object_id_: Integer,
              object_type_id: String,
              portal_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the object.
            object_id_:,
            # The type identifier for the object.
            object_type_id:,
            # The unique identifier for the portal.
            portal_id:
          )
          end

          sig do
            override.returns(
              {
                object_id_: Integer,
                object_type_id: String,
                portal_id: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
