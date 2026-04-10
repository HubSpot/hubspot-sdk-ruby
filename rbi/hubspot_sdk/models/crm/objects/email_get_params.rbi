# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class EmailGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Objects::EmailGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :email_id

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # A comma separated list of object types to retrieve associated IDs for. If any of
          # the specified associations do not exist, they will be ignored.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :associations

          sig { params(associations: T::Array[String]).void }
          attr_writer :associations

          # The name of a property whose values are unique for this object type
          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          # A comma separated list of the properties to be returned in the response. If any
          # of the specified properties are not present on the requested object(s), they
          # will be ignored.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties

          sig { params(properties: T::Array[String]).void }
          attr_writer :properties

          # A comma separated list of the properties to be returned along with their history
          # of previous values. If any of the specified properties are not present on the
          # requested object(s), they will be ignored.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties_with_history

          sig { params(properties_with_history: T::Array[String]).void }
          attr_writer :properties_with_history

          sig do
            params(
              email_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            email_id:,
            # Whether to return only results that have been archived.
            archived: nil,
            # A comma separated list of object types to retrieve associated IDs for. If any of
            # the specified associations do not exist, they will be ignored.
            associations: nil,
            # The name of a property whose values are unique for this object type
            id_property: nil,
            # A comma separated list of the properties to be returned in the response. If any
            # of the specified properties are not present on the requested object(s), they
            # will be ignored.
            properties: nil,
            # A comma separated list of the properties to be returned along with their history
            # of previous values. If any of the specified properties are not present on the
            # requested object(s), they will be ignored.
            properties_with_history: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                email_id: String,
                archived: T::Boolean,
                associations: T::Array[String],
                id_property: String,
                properties: T::Array[String],
                properties_with_history: T::Array[String],
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
