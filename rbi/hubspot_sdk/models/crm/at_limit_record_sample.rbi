# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class AtLimitRecordSample < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::AtLimitRecordSample,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The label associated with a record that is at its limit.
        sig { returns(String) }
        attr_accessor :label

        # The objectId of the object that is at its limit.
        sig { returns(Integer) }
        attr_accessor :object_id_

        sig do
          params(label: String, object_id_: Integer).returns(T.attached_class)
        end
        def self.new(
          # The label associated with a record that is at its limit.
          label:,
          # The objectId of the object that is at its limit.
          object_id_:
        )
        end

        sig { override.returns({ label: String, object_id_: Integer }) }
        def to_hash
        end
      end
    end
  end
end
