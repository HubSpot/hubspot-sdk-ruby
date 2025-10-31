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

        # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
        # fetch the metrics associated with the assets for a specified period. If not
        # provided, no asset metrics will be fetched.
        sig { returns(T.nilable(String)) }
        attr_reader :end_date

        sig { params(end_date: String).void }
        attr_writer :end_date

        # A comma-separated list of the properties to be returned in the response. If any
        # of the specified properties has empty value on the requested object, they will
        # be ignored and not returned in response. If this parameter is empty, the
        # response will include an empty properties map.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
        # fetch the metrics associated with the assets for a specified period. If not
        # provided, no asset metrics will be fetched.
        sig { returns(T.nilable(String)) }
        attr_reader :start_date

        sig { params(start_date: String).void }
        attr_writer :start_date

        sig do
          params(
            end_date: String,
            properties: T::Array[String],
            start_date: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched.
          end_date: nil,
          # A comma-separated list of the properties to be returned in the response. If any
          # of the specified properties has empty value on the requested object, they will
          # be ignored and not returned in response. If this parameter is empty, the
          # response will include an empty properties map.
          properties: nil,
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
