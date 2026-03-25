# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class AssetListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::AssetListParams,
                HubspotSDK::Internal::AnyHash
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

          # The end date for filtering assets, in YYYY-MM-DD format.
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # The maximum number of results to display per page.
          sig { returns(T.nilable(String)) }
          attr_reader :limit

          sig { params(limit: String).void }
          attr_writer :limit

          # The start date for filtering assets, in YYYY-MM-DD format.
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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            campaign_guid:,
            asset_type:,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # The end date for filtering assets, in YYYY-MM-DD format.
            end_date: nil,
            # The maximum number of results to display per page.
            limit: nil,
            # The start date for filtering assets, in YYYY-MM-DD format.
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
