# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicMergeInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicMergeInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_id_to_merge

        sig { returns(String) }
        attr_accessor :primary_object_id

        sig do
          params(object_id_to_merge: String, primary_object_id: String).returns(
            T.attached_class
          )
        end
        def self.new(object_id_to_merge:, primary_object_id:)
        end

        sig do
          override.returns(
            { object_id_to_merge: String, primary_object_id: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
