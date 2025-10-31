# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class ReportGetAttributionMetricsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::ReportGetAttributionMetricsParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # End date for the report data, formatted as YYYY-MM-DD. Default value: Current
          # date
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # The start date for the report data, formatted as YYYY-MM-DD. Default value:
          # 2006-01-01
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              end_date: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # End date for the report data, formatted as YYYY-MM-DD. Default value: Current
            # date
            end_date: nil,
            # The start date for the report data, formatted as YYYY-MM-DD. Default value:
            # 2006-01-01
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
