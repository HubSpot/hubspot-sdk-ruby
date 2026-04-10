# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicListConversionResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicListConversionResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the list for which the conversion details are provided.
        sig { returns(String) }
        attr_accessor :list_id

        # The date and time when the list was converted.
        sig { returns(T.nilable(Time)) }
        attr_reader :converted_at

        sig { params(converted_at: Time).void }
        attr_writer :converted_at

        # The scheduled time for the list conversion, which can be based on a specific
        # date or inactivity period.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Crm::PublicListConversionResponse::RequestedConversionTime::Variants
            )
          )
        end
        attr_reader :requested_conversion_time

        sig do
          params(
            requested_conversion_time:
              T.any(
                HubSpotSDK::Crm::PublicListConversionDate::OrHash,
                HubSpotSDK::Crm::PublicListConversionInactivity::OrHash
              )
          ).void
        end
        attr_writer :requested_conversion_time

        sig do
          params(
            list_id: String,
            converted_at: Time,
            requested_conversion_time:
              T.any(
                HubSpotSDK::Crm::PublicListConversionDate::OrHash,
                HubSpotSDK::Crm::PublicListConversionInactivity::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the list for which the conversion details are provided.
          list_id:,
          # The date and time when the list was converted.
          converted_at: nil,
          # The scheduled time for the list conversion, which can be based on a specific
          # date or inactivity period.
          requested_conversion_time: nil
        )
        end

        sig do
          override.returns(
            {
              list_id: String,
              converted_at: Time,
              requested_conversion_time:
                HubSpotSDK::Crm::PublicListConversionResponse::RequestedConversionTime::Variants
            }
          )
        end
        def to_hash
        end

        # The scheduled time for the list conversion, which can be based on a specific
        # date or inactivity period.
        module RequestedConversionTime
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicListConversionDate,
                HubSpotSDK::Crm::PublicListConversionInactivity
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicListConversionResponse::RequestedConversionTime::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
