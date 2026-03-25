# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        class BatchReadParams < HubspotSDK::Models::BatchInputString
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CommunicationPreferences::Statuses::BatchReadParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The communication channel to filter by. This parameter is required and currently
          # only supports 'EMAIL'.
          sig { returns(HubspotSDK::BatchInputString::Channel::OrSymbol) }
          attr_accessor :channel

          # An optional identifier for the business unit. This is an integer value.
          sig { returns(T.nilable(Integer)) }
          attr_reader :business_unit_id

          sig { params(business_unit_id: Integer).void }
          attr_writer :business_unit_id

          sig do
            params(
              channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
              business_unit_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The communication channel to filter by. This parameter is required and currently
            # only supports 'EMAIL'.
            channel:,
            # An optional identifier for the business unit. This is an integer value.
            business_unit_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
                business_unit_id: Integer,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The communication channel to filter by. This parameter is required and currently
          # only supports 'EMAIL'.
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
