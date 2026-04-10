# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class NearLimitRecordSample < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::NearLimitRecordSample,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The primary identifier of the record.
        sig { returns(String) }
        attr_accessor :label

        # The unique identifier for the object.
        sig { returns(Integer) }
        attr_accessor :object_id_

        # The percentage of the limit that has been used.
        sig { returns(Float) }
        attr_accessor :percentage

        # The number of records currently in use.
        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(
            label: String,
            object_id_: Integer,
            percentage: Float,
            usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The primary identifier of the record.
          label:,
          # The unique identifier for the object.
          object_id_:,
          # The percentage of the limit that has been used.
          percentage:,
          # The number of records currently in use.
          usage:
        )
        end

        sig do
          override.returns(
            {
              label: String,
              object_id_: Integer,
              percentage: Float,
              usage: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
