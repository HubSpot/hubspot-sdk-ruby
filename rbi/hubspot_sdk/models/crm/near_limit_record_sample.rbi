# typed: strong

module HubspotSDK
  module Models
    module CRM
      class NearLimitRecordSample < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::NearLimitRecordSample,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :label

        sig { returns(Integer) }
        attr_accessor :object_id_

        sig { returns(Float) }
        attr_accessor :percentage

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
        def self.new(label:, object_id_:, percentage:, usage:)
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
