# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        class AssetListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::Campaigns::AssetListParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :campaign_guid

          sig { returns(String) }
          attr_accessor :asset_type

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched. Example: 2024-01-27
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # The maximum number of results to display per page.
          sig { returns(T.nilable(String)) }
          attr_reader :limit

          sig { params(limit: String).void }
          attr_writer :limit

          # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched. Example: 2023-01-20
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              campaign_guid: String,
              asset_type: String,
              after: String,
              end_date: String,
              limit: String,
              start_date: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            campaign_guid:,
            asset_type:,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
            # fetch the metrics associated with the assets for a specified period. If not
            # provided, no asset metrics will be fetched. Example: 2024-01-27
            end_date: nil,
            # The maximum number of results to display per page.
            limit: nil,
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
                campaign_guid: String,
                asset_type: String,
                after: String,
                end_date: String,
                limit: String,
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
