# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        module GenericObjects
          class BatchGetParams < HubspotSDK::Models::Crm::BatchReadInputSimplePublicObjectID
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Objects::GenericObjects::BatchGetParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :object_type

            # Whether to return only results that have been archived.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :archived

            sig { params(archived: T::Boolean).void }
            attr_writer :archived

            sig do
              params(
                object_type: String,
                archived: T::Boolean,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              object_type:,
              # Whether to return only results that have been archived.
              archived: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  object_type: String,
                  archived: T::Boolean,
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
end
