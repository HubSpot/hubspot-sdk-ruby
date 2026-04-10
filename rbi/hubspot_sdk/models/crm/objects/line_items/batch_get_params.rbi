# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        module LineItems
          class BatchGetParams < HubSpotSDK::Models::Crm::BatchReadInputSimplePublicObjectID
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Objects::LineItems::BatchGetParams,
                  HubSpotSDK::Internal::AnyHash
                )
              end

            # Whether to return only results that have been archived.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :archived

            sig { params(archived: T::Boolean).void }
            attr_writer :archived

            sig do
              params(
                archived: T::Boolean,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether to return only results that have been archived.
              archived: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  archived: T::Boolean,
                  request_options: HubSpotSDK::RequestOptions
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
end
