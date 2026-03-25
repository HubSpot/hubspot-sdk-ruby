# typed: strong

module HubspotSDK
  module Models
    module Crm
      class RecordIDInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::RecordIDInput, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :record_id

        sig do
          params(object_type_id: String, record_id: String).returns(
            T.attached_class
          )
        end
        def self.new(object_type_id:, record_id:)
        end

        sig { override.returns({ object_type_id: String, record_id: String }) }
        def to_hash
        end
      end
    end
  end
end
