# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        class BatchGetParams < HubSpotSDK::Models::Marketing::BatchInputPublicCampaignReadInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::Campaigns::BatchGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched. Example: 2024-01-27
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # A comma-separated list of the properties to be returned in the response. If any
          # of the specified properties has empty value on the requested object(s), they
          # will be ignored and not returned in response. If this parameter is empty, the
          # response will include an empty properties map. Example: hs_name,
          # hs_campaign_status, hs_notes
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties

          sig { params(properties: T::Array[String]).void }
          attr_writer :properties

          # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched. Example: 2023-01-20
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              end_date: String,
              properties: T::Array[String],
              start_date: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
            # fetch the metrics associated with the assets for a specified period. If not
            # provided, no asset metrics will be fetched. Example: 2024-01-27
            end_date: nil,
            # A comma-separated list of the properties to be returned in the response. If any
            # of the specified properties has empty value on the requested object(s), they
            # will be ignored and not returned in response. If this parameter is empty, the
            # response will include an empty properties map. Example: hs_name,
            # hs_campaign_status, hs_notes
            properties: nil,
            # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
            # fetch the metrics associated with the assets for a specified period. If not
            # provided, no asset metrics will be fetched. Example: 2023-01-20
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
end
