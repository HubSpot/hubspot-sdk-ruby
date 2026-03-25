# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PublicSubscriptionStatus < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the subscription status.
        sig { returns(String) }
        attr_accessor :id

        # A description of the subscription status.
        sig { returns(String) }
        attr_accessor :description

        # The name of the subscription status.
        sig { returns(String) }
        attr_accessor :name

        # Indicates the origin of the subscription status, with possible values being
        # 'PORTAL_WIDE_STATUS', 'BRAND_WIDE_STATUS', or 'SUBSCRIPTION_STATUS'.
        sig do
          returns(
            HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
          )
        end
        attr_accessor :source_of_status

        # The current status of the subscription, which can be 'SUBSCRIBED' or
        # 'NOT_SUBSCRIBED'.
        sig do
          returns(
            HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The unique identifier for the brand associated with the subscription status,
        # represented as an integer.
        sig { returns(T.nilable(Integer)) }
        attr_reader :brand_id

        sig { params(brand_id: Integer).void }
        attr_writer :brand_id

        # The legal basis for processing the subscription, which can include values such
        # as 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', or 'LEGITIMATE_INTEREST_OTHER'.
        sig do
          returns(
            T.nilable(
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          )
        end
        attr_reader :legal_basis

        sig do
          params(
            legal_basis:
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::OrSymbol
          ).void
        end
        attr_writer :legal_basis

        # An explanation of the legal basis for the subscription status.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_basis_explanation

        sig { params(legal_basis_explanation: String).void }
        attr_writer :legal_basis_explanation

        # The name of the preference group associated with the subscription status.
        sig { returns(T.nilable(String)) }
        attr_reader :preference_group_name

        sig { params(preference_group_name: String).void }
        attr_writer :preference_group_name

        sig do
          params(
            id: String,
            description: String,
            name: String,
            source_of_status:
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus::OrSymbol,
            status:
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status::OrSymbol,
            brand_id: Integer,
            legal_basis:
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::OrSymbol,
            legal_basis_explanation: String,
            preference_group_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the subscription status.
          id:,
          # A description of the subscription status.
          description:,
          # The name of the subscription status.
          name:,
          # Indicates the origin of the subscription status, with possible values being
          # 'PORTAL_WIDE_STATUS', 'BRAND_WIDE_STATUS', or 'SUBSCRIPTION_STATUS'.
          source_of_status:,
          # The current status of the subscription, which can be 'SUBSCRIBED' or
          # 'NOT_SUBSCRIBED'.
          status:,
          # The unique identifier for the brand associated with the subscription status,
          # represented as an integer.
          brand_id: nil,
          # The legal basis for processing the subscription, which can include values such
          # as 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
          # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
          # 'PROCESS_AND_STORE', or 'LEGITIMATE_INTEREST_OTHER'.
          legal_basis: nil,
          # An explanation of the legal basis for the subscription status.
          legal_basis_explanation: nil,
          # The name of the preference group associated with the subscription status.
          preference_group_name: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: String,
              name: String,
              source_of_status:
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol,
              status:
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status::TaggedSymbol,
              brand_id: Integer,
              legal_basis:
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol,
              legal_basis_explanation: String,
              preference_group_name: String
            }
          )
        end
        def to_hash
        end

        # Indicates the origin of the subscription status, with possible values being
        # 'PORTAL_WIDE_STATUS', 'BRAND_WIDE_STATUS', or 'SUBSCRIPTION_STATUS'.
        module SourceOfStatus
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BRAND_WIDE_STATUS =
            T.let(
              :BRAND_WIDE_STATUS,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
            )
          PORTAL_WIDE_STATUS =
            T.let(
              :PORTAL_WIDE_STATUS,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
            )
          SUBSCRIPTION_STATUS =
            T.let(
              :SUBSCRIPTION_STATUS,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The current status of the subscription, which can be 'SUBSCRIBED' or
        # 'NOT_SUBSCRIBED'.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_SUBSCRIBED =
            T.let(
              :NOT_SUBSCRIBED,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status::TaggedSymbol
            )
          SUBSCRIBED =
            T.let(
              :SUBSCRIBED,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The legal basis for processing the subscription, which can include values such
        # as 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', or 'LEGITIMATE_INTEREST_OTHER'.
        module LegalBasis
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
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
