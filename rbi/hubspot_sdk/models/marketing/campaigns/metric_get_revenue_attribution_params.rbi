# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class MetricGetRevenueAttributionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::MetricGetRevenueAttributionParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :campaign_guid

          sig { returns(T.nilable(String)) }
          attr_reader :attribution_model

          sig { params(attribution_model: String).void }
          attr_writer :attribution_model

          # End date to fetch attribution data, YYYY-MM-DD
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # Start date to fetch attribution data, YYYY-MM-DD
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              campaign_guid: String,
              attribution_model: String,
              end_date: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            campaign_guid:,
            attribution_model: nil,
            # End date to fetch attribution data, YYYY-MM-DD
            end_date: nil,
            # Start date to fetch attribution data, YYYY-MM-DD
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                campaign_guid: String,
                attribution_model: String,
                end_date: String,
                start_date: String,
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
