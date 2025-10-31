# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class ReportGetRevenueAttributionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::ReportGetRevenueAttributionParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Allowed values: LINEAR, FIRST_INTERACTION, LAST_INTERACTION, FULL_PATH,
          # U_SHAPED, W_SHAPED, TIME_DECAY, J_SHAPED, INVERSE_J_SHAPED Default value: LINEAR
          sig { returns(T.nilable(String)) }
          attr_reader :attribution_model

          sig { params(attribution_model: String).void }
          attr_writer :attribution_model

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
              attribution_model: String,
              end_date: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Allowed values: LINEAR, FIRST_INTERACTION, LAST_INTERACTION, FULL_PATH,
            # U_SHAPED, W_SHAPED, TIME_DECAY, J_SHAPED, INVERSE_J_SHAPED Default value: LINEAR
            attribution_model: nil,
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
