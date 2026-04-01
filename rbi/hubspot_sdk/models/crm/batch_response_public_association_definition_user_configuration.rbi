# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchResponsePublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(
            T::Array[
              HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration
            ]
          )
        end
        attr_accessor :results

        # The date and time when the batch operation started.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, which can be CANCELED, COMPLETE,
        # PENDING, or PROCESSING.
        sig do
          returns(
            HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A collection of URLs linking to related documentation or resources associated
        # with the batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The date and time when the batch operation was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[
                HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration::OrHash
              ],
            started_at: Time,
            status:
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch operation was completed.
          completed_at:,
          results:,
          # The date and time when the batch operation started.
          started_at:,
          # The current status of the batch operation, which can be CANCELED, COMPLETE,
          # PENDING, or PROCESSING.
          status:,
          # A collection of URLs linking to related documentation or resources associated
          # with the batch operation.
          links: nil,
          # The date and time when the batch operation was requested.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[
                  HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration
                ],
              started_at: Time,
              status:
                HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, which can be CANCELED, COMPLETE,
        # PENDING, or PROCESSING.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status::TaggedSymbol
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
