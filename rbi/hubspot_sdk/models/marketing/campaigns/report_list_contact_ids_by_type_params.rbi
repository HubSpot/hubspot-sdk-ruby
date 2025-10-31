# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class ReportListContactIDsByTypeParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::ReportListContactIDsByTypeParams,
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

          # End date for the report data, formatted as YYYY-MM-DD. Default value: Current
          # date
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # Limit for the number of contacts to fetch Default: 100
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # The start date for the report data, formatted as YYYY-MM-DD. Default value:
          # 2006-01-01
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              campaign_guid: String,
              after: String,
              end_date: String,
              limit: Integer,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            campaign_guid:,
            # A cursor for pagination. If provided, the results will start after the given
            # cursor. Example: NTI1Cg%3D%3D
            after: nil,
            # End date for the report data, formatted as YYYY-MM-DD. Default value: Current
            # date
            end_date: nil,
            # Limit for the number of contacts to fetch Default: 100
            limit: nil,
            # The start date for the report data, formatted as YYYY-MM-DD. Default value:
            # 2006-01-01
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
                limit: Integer,
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
