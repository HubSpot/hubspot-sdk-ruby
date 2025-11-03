# typed: strong

module HubspotSDK
  module Models
    module Crm
      class AtLimitRecordSample < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::AtLimitRecordSample,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :label

        sig { returns(Integer) }
        attr_accessor :object_id_

        sig do
          params(label: String, object_id_: Integer).returns(T.attached_class)
        end
        def self.new(label:, object_id_:)
        end

        sig { override.returns({ label: String, object_id_: Integer }) }
        def to_hash
        end
      end
    end
  end
end
