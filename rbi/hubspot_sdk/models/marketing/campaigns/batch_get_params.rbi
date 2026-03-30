# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class BatchGetParams < HubspotSDK::Models::Marketing::BatchInputPublicCampaignReadInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::BatchGetParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties

          sig { params(properties: T::Array[String]).void }
          attr_writer :properties

          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              end_date: String,
              properties: T::Array[String],
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            end_date: nil,
            properties: nil,
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                end_date: String,
                properties: T::Array[String],
                start_date: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
