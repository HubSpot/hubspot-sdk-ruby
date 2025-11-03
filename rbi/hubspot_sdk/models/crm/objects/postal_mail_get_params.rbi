# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PostalMailGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::PostalMailGetParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :associations

          sig { params(associations: T::Array[String]).void }
          attr_writer :associations

          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties

          sig { params(properties: T::Array[String]).void }
          attr_writer :properties

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties_with_history

          sig { params(properties_with_history: T::Array[String]).void }
          attr_writer :properties_with_history

          sig do
            params(
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            archived: nil,
            associations: nil,
            id_property: nil,
            properties: nil,
            properties_with_history: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                archived: T::Boolean,
                associations: T::Array[String],
                id_property: String,
                properties: T::Array[String],
                properties_with_history: T::Array[String],
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
