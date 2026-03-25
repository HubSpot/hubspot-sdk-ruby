# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicCommunicationSubscriptionFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicCommunicationSubscriptionFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :accepted_opt_states

        # Specifies the communication channel associated with the subscription filter
        # (EMAIL, WHATSAPP, SMS).
        sig { returns(String) }
        attr_accessor :channel

        # Indicates the type of filter, which is (COMMUNICATION_SUBSCRIPTION)
        sig do
          returns(
            HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        sig { returns(T::Array[String]) }
        attr_accessor :subscription_ids

        # Defines the type of subscription related to the filter (PORTAL_WIDE,
        # BUSINESS_UNIT_WIDE, INDIVIDUAL_SUBSCRIPTION)
        sig { returns(String) }
        attr_accessor :subscription_type

        # The ID of the business unit associated with the subscription filter.
        sig { returns(T.nilable(String)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: String).void }
        attr_writer :business_unit_id

        sig do
          params(
            accepted_opt_states: T::Array[String],
            channel: String,
            filter_type:
              HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::FilterType::OrSymbol,
            subscription_ids: T::Array[String],
            subscription_type: String,
            business_unit_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          accepted_opt_states:,
          # Specifies the communication channel associated with the subscription filter
          # (EMAIL, WHATSAPP, SMS).
          channel:,
          # Indicates the type of filter, which is (COMMUNICATION_SUBSCRIPTION)
          filter_type:,
          subscription_ids:,
          # Defines the type of subscription related to the filter (PORTAL_WIDE,
          # BUSINESS_UNIT_WIDE, INDIVIDUAL_SUBSCRIPTION)
          subscription_type:,
          # The ID of the business unit associated with the subscription filter.
          business_unit_id: nil
        )
        end

        sig do
          override.returns(
            {
              accepted_opt_states: T::Array[String],
              channel: String,
              filter_type:
                HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::FilterType::OrSymbol,
              subscription_ids: T::Array[String],
              subscription_type: String,
              business_unit_id: String
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter, which is (COMMUNICATION_SUBSCRIPTION)
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMUNICATION_SUBSCRIPTION =
            T.let(
              :COMMUNICATION_SUBSCRIPTION,
              HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
