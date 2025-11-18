# typed: strong

module HubspotSDK
  module Models
    module Crm
      class LimitAndUsageForObjectType < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::LimitAndUsageForObjectType,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The maximum allowed count for the object type.
        sig { returns(Integer) }
        attr_accessor :limit

        # The unique identifier for the object type.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The percentage of the limit that has been used.
        sig { returns(Float) }
        attr_accessor :percentage

        # The plural label for the object type.
        sig { returns(String) }
        attr_accessor :plural_label

        # The singular label for the object type.
        sig { returns(String) }
        attr_accessor :singular_label

        # The current usage count for the object type.
        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(
            limit: Integer,
            object_type_id: String,
            percentage: Float,
            plural_label: String,
            singular_label: String,
            usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The maximum allowed count for the object type.
          limit:,
          # The unique identifier for the object type.
          object_type_id:,
          # The percentage of the limit that has been used.
          percentage:,
          # The plural label for the object type.
          plural_label:,
          # The singular label for the object type.
          singular_label:,
          # The current usage count for the object type.
          usage:
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              object_type_id: String,
              percentage: Float,
              plural_label: String,
              singular_label: String,
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
