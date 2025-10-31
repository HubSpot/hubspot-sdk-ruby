# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ListScheduleConversionParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ListScheduleConversionParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              HubspotSDK::CRM::PublicListConversionDate,
              HubspotSDK::CRM::PublicListConversionInactivity
            )
          )
        end
        attr_accessor :public_list_conversion_time

        sig do
          params(
            public_list_conversion_time:
              T.any(
                HubspotSDK::CRM::PublicListConversionDate::OrHash,
                HubspotSDK::CRM::PublicListConversionInactivity::OrHash
              ),
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(public_list_conversion_time:, request_options: {})
        end

        sig do
          override.returns(
            {
              public_list_conversion_time:
                T.any(
                  HubspotSDK::CRM::PublicListConversionDate,
                  HubspotSDK::CRM::PublicListConversionInactivity
                ),
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
