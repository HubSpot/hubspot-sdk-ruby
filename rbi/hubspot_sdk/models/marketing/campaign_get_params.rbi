# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CampaignGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CampaignGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :campaign_guid

        # The end date for filtering campaign data, in YYYY-MM-DD format.
        sig { returns(T.nilable(String)) }
        attr_reader :end_date

        sig { params(end_date: String).void }
        attr_writer :end_date

        # A comma-separated list of property names to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        # The start date for filtering campaign data, in YYYY-MM-DD format.
        sig { returns(T.nilable(String)) }
        attr_reader :start_date

        sig { params(start_date: String).void }
        attr_writer :start_date

        sig do
          params(
            campaign_guid: String,
            end_date: String,
            properties: T::Array[String],
            start_date: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          campaign_guid:,
          # The end date for filtering campaign data, in YYYY-MM-DD format.
          end_date: nil,
          # A comma-separated list of property names to include in the response.
          properties: nil,
          # The start date for filtering campaign data, in YYYY-MM-DD format.
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              campaign_guid: String,
              end_date: String,
              properties: T::Array[String],
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
