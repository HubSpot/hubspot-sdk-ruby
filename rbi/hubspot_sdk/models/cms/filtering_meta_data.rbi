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
        attr_accessor :include_helpdesk_routable_teams_only

        sig { returns(T::Boolean) }
        attr_accessor :include_unconfirmed_users

        sig { returns(T::Array[String]) }
        attr_accessor :list_processing_types

        sig { returns(T::Array[String]) }
        attr_accessor :pipeline_ids

        sig do
          params(
            include_helpdesk_routable_teams_only: T::Boolean,
            include_unconfirmed_users: T::Boolean,
            list_processing_types: T::Array[String],
            pipeline_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          include_helpdesk_routable_teams_only:,
          include_unconfirmed_users:,
          list_processing_types:,
          pipeline_ids:
        )
        end

        sig do
          override.returns(
            {
              include_helpdesk_routable_teams_only: T::Boolean,
              include_unconfirmed_users: T::Boolean,
              list_processing_types: T::Array[String],
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
