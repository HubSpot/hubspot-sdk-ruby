# typed: strong

module HubspotSDK
  module Models
    module Cms
      class FilteringMetaData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::FilteringMetaData,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_unconfirmed_users

        sig { returns(T::Array[String]) }
        attr_accessor :pipeline_ids

        sig do
          params(
            include_unconfirmed_users: T::Boolean,
            pipeline_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(include_unconfirmed_users:, pipeline_ids:)
        end

        sig do
          override.returns(
            {
              include_unconfirmed_users: T::Boolean,
              pipeline_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
