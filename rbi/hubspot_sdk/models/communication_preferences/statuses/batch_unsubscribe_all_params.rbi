# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        class BatchUnsubscribeAllParams < HubspotSDK::Models::BatchInputString
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::BatchInputString::Channel::OrSymbol) }
          attr_accessor :channel

          sig { returns(T.nilable(Integer)) }
          attr_reader :business_unit_id

          sig { params(business_unit_id: Integer).void }
          attr_writer :business_unit_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :verbose

          sig { params(verbose: T::Boolean).void }
          attr_writer :verbose

          sig do
            params(
              channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
              business_unit_id: Integer,
              verbose: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            channel:,
            business_unit_id: nil,
            verbose: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
                business_unit_id: Integer,
                verbose: T::Boolean,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Channel
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubspotSDK::BatchInputString::Channel)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(:EMAIL, HubspotSDK::BatchInputString::Channel::TaggedSymbol)

            sig do
              override.returns(
                T::Array[HubspotSDK::BatchInputString::Channel::TaggedSymbol]
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
