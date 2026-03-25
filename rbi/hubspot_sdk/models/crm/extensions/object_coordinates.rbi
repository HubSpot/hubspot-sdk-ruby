# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ObjectCoordinates < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ObjectCoordinates,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :object_id_

          sig { returns(String) }
          attr_accessor :object_type_id

          sig { returns(Integer) }
          attr_accessor :portal_id

          sig do
            params(
              object_id_: Integer,
              object_type_id: String,
              portal_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(object_id_:, object_type_id:, portal_id:)
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
