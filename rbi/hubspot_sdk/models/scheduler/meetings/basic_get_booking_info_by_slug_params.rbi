# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      module Meetings
        class BasicGetBookingInfoBySlugParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Scheduler::Meetings::BasicGetBookingInfoBySlugParams,
                HubSpotSDK::Internal::AnyHash
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
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(slug:, timezone:, request_options: {})
          end

          sig do
            override.returns(
              {
                slug: String,
                timezone: String,
                request_options: HubSpotSDK::RequestOptions
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
