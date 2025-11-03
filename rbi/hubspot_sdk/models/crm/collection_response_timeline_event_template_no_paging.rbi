# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseTimelineEventTemplateNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponseTimelineEventTemplateNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::TimelineEventTemplate]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::Crm::TimelineEventTemplate::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Crm::TimelineEventTemplate] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
