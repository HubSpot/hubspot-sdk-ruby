# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        class BasicGetAvailabilityBySlugParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Scheduler::Meetings::BasicGetAvailabilityBySlugParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :slug

          sig { returns(String) }
          attr_accessor :timezone

          sig { returns(T.nilable(Integer)) }
          attr_reader :month_offset

          sig { params(month_offset: Integer).void }
          attr_writer :month_offset

          sig do
            params(
              slug: String,
              timezone: String,
              month_offset: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(slug:, timezone:, month_offset: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                slug: String,
                timezone: String,
                month_offset: Integer,
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
