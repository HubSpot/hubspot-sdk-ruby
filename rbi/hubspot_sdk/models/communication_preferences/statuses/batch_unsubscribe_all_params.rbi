# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        class BatchUnsubscribeAllParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The communication channel from which subscribers will be unsubscribed. This
          # parameter is required and currently supports only 'EMAIL'.
          sig { returns(HubSpotSDK::BatchInputString::Channel::OrSymbol) }
          attr_accessor :channel

          # An optional integer representing the business unit ID for which the operation is
          # being performed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :business_unit_id

          sig { params(business_unit_id: Integer).void }
          attr_writer :business_unit_id

          # A boolean indicating whether to include detailed information in the response.
          # Defaults to false.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :verbose

          sig { params(verbose: T::Boolean).void }
          attr_writer :verbose

          sig do
            params(
              channel: HubSpotSDK::BatchInputString::Channel::OrSymbol,
              business_unit_id: Integer,
              verbose: T::Boolean,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The communication channel from which subscribers will be unsubscribed. This
            # parameter is required and currently supports only 'EMAIL'.
            channel:,
            # An optional integer representing the business unit ID for which the operation is
            # being performed.
            business_unit_id: nil,
            # A boolean indicating whether to include detailed information in the response.
            # Defaults to false.
            verbose: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channel: HubSpotSDK::BatchInputString::Channel::OrSymbol,
                business_unit_id: Integer,
                verbose: T::Boolean,
                request_options: HubSpotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The communication channel from which subscribers will be unsubscribed. This
          # parameter is required and currently supports only 'EMAIL'.
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
