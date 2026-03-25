# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :email_ids

        sig { params(email_ids: T::Array[Integer]).void }
        attr_writer :email_ids

        sig { returns(T.nilable(String)) }
        attr_reader :end_timestamp

        sig { params(end_timestamp: String).void }
        attr_writer :end_timestamp

        sig { returns(T.nilable(String)) }
        attr_reader :property

        sig { params(property: String).void }
        attr_writer :property

        sig { returns(T.nilable(String)) }
        attr_reader :start_timestamp

        sig { params(start_timestamp: String).void }
        attr_writer :start_timestamp

        sig do
          params(
            email_ids: T::Array[Integer],
            end_timestamp: String,
            property: String,
            start_timestamp: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          email_ids: nil,
          end_timestamp: nil,
          property: nil,
          start_timestamp: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              email_ids: T::Array[Integer],
              end_timestamp: String,
              property: String,
              start_timestamp: String,
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
