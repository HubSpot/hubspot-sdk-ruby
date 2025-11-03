# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicListConversionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicListConversionResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(T.nilable(Time)) }
        attr_reader :converted_at

        sig { params(converted_at: Time).void }
        attr_writer :converted_at

        sig do
          returns(
            T.nilable(
              HubspotSDK::Crm::PublicListConversionResponse::RequestedConversionTime::Variants
            )
          )
        end
        attr_reader :requested_conversion_time

        sig do
          params(
            requested_conversion_time:
              T.any(
                HubspotSDK::Crm::PublicListConversionDate::OrHash,
                HubspotSDK::Crm::PublicListConversionInactivity::OrHash
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
                HubspotSDK::Crm::PublicListConversionDate::OrHash,
                HubspotSDK::Crm::PublicListConversionInactivity::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          list_id:,
          converted_at: nil,
          requested_conversion_time: nil
        )
        end

        sig do
          override.returns(
            {
              list_id: String,
              converted_at: Time,
              requested_conversion_time:
                HubspotSDK::Crm::PublicListConversionResponse::RequestedConversionTime::Variants
            }
          )
        end
        def to_hash
        end

        module RequestedConversionTime
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicListConversionDate,
                HubspotSDK::Crm::PublicListConversionInactivity
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicListConversionResponse::RequestedConversionTime::Variants
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
