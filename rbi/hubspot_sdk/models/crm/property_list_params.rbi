# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PropertyListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PropertyListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(String)) }
        attr_reader :properties

        sig { params(properties: String).void }
        attr_writer :properties

        sig do
          params(
            archived: T::Boolean,
            properties: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to return only results that have been archived.
          archived: nil,
          properties: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              properties: String,
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
