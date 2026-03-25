# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        class BasicGetBookingInfoBySlugParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Scheduler::Meetings::BasicGetBookingInfoBySlugParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :slug

          sig { returns(String) }
          attr_accessor :timezone

          sig do
            params(
              slug: String,
              timezone: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(slug:, timezone:, request_options: {})
          end

          sig do
            override.returns(
              {
                slug: String,
                timezone: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
