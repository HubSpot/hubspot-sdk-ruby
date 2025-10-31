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

          # A cursor for pagination. If provided, the results will start after the given
          # cursor. Example: NTI1Cg%3D%3D
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched.
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # The maximum number of results to return. Default: 10
          sig { returns(T.nilable(String)) }
          attr_reader :limit

          sig { params(limit: String).void }
          attr_writer :limit

          # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched.
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              campaign_guid: String,
              after: String,
              end_date: String,
              limit: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            campaign_guid:,
            # A cursor for pagination. If provided, the results will start after the given
            # cursor. Example: NTI1Cg%3D%3D
            after: nil,
            # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
            # fetch the metrics associated with the assets for a specified period. If not
            # provided, no asset metrics will be fetched.
            end_date: nil,
            # The maximum number of results to return. Default: 10
            limit: nil,
            # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
            # fetch the metrics associated with the assets for a specified period. If not
            # provided, no asset metrics will be fetched.
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                campaign_guid: String,
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
