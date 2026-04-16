# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        class BatchReadParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::CommunicationPreferences::Statuses::BatchReadParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The communication channel to filter the subscription statuses. Must be 'EMAIL'.
          sig { returns(HubSpotSDK::BatchInputString::Channel::OrSymbol) }
          attr_accessor :channel

          # An optional integer representing the business unit ID. This parameter helps to
          # filter the results based on the specific business unit.
          sig { returns(T.nilable(Integer)) }
          attr_reader :business_unit_id

          sig { params(business_unit_id: Integer).void }
          attr_writer :business_unit_id

          sig do
            params(
              channel: HubSpotSDK::BatchInputString::Channel::OrSymbol,
              business_unit_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The communication channel to filter the subscription statuses. Must be 'EMAIL'.
            channel:,
            # An optional integer representing the business unit ID. This parameter helps to
            # filter the results based on the specific business unit.
            business_unit_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channel: HubSpotSDK::BatchInputString::Channel::OrSymbol,
                business_unit_id: Integer,
                request_options: HubSpotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The communication channel to filter the subscription statuses. Must be 'EMAIL'.
          module Channel
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubSpotSDK::BatchInputString::Channel)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(:EMAIL, HubSpotSDK::BatchInputString::Channel::TaggedSymbol)

            sig do
              override.returns(
                T::Array[HubSpotSDK::BatchInputString::Channel::TaggedSymbol]
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
