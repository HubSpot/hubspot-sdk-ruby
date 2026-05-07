# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CampaignGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CampaignGetParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :campaign_guid

        # The end date for fetching asset metrics, in YYYY-MM-DD format. Optional.
        # Example: 2000-01-27
        sig { returns(T.nilable(String)) }
        attr_reader :end_date

        sig { params(end_date: String).void }
        attr_writer :end_date

        # A comma-separated list of properties to include in the response.
        #  Unrecognized properties are ignored. Optional. Example: hs_name,hs_budget, hs_notes
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        # The start date for fetching asset metrics, in YYYY-MM-DD format.
        # Optional. Example: 2000-01-20
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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          campaign_guid:,
          # The end date for fetching asset metrics, in YYYY-MM-DD format. Optional.
          # Example: 2000-01-27
          end_date: nil,
          # A comma-separated list of properties to include in the response.
          #  Unrecognized properties are ignored. Optional. Example: hs_name,hs_budget, hs_notes
          properties: nil,
          # The start date for fetching asset metrics, in YYYY-MM-DD format.
          # Optional. Example: 2000-01-20
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
