# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class BatchResponsePublicAssociationDefinitionConfigurationUpdateResult < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :completed_at

            sig do
              returns(
                T::Array[
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult
                ]
              )
            end
            attr_accessor :results

            sig { returns(Time) }
            attr_accessor :started_at

            sig do
              returns(
                HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::OrSymbol
              )
            end
            attr_accessor :status

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :links

            sig { params(links: T::Hash[Symbol, String]).void }
            attr_writer :links

            sig { returns(T.nilable(Time)) }
            attr_reader :requested_at

            sig { params(requested_at: Time).void }
            attr_writer :requested_at

            sig do
              params(
                completed_at: Time,
                results:
                  T::Array[
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::OrHash
                  ],
                started_at: Time,
                status:
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::OrSymbol,
                links: T::Hash[Symbol, String],
                requested_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              completed_at:,
              results:,
              started_at:,
              status:,
              links: nil,
              requested_at: nil
            )
            end

            sig do
              override.returns(
                {
                  completed_at: Time,
                  results:
                    T::Array[
                      HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult
                    ],
                  started_at: Time,
                  status:
                    HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::OrSymbol,
                  links: T::Hash[Symbol, String],
                  requested_at: Time
                }
              )
            end
            def to_hash
            end

            module Status
              extend HubspotSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :PENDING,
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
                )
              PROCESSING =
                T.let(
                  :PROCESSING,
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :CANCELED,
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
                )
              COMPLETE =
                T.let(
                  :COMPLETE,
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
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
  end
end
