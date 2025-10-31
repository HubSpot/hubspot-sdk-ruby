# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        class StandardError1 < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Associations::StandardError1,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The main category of the error.
          sig { returns(String) }
          attr_accessor :category

          # Additional context-specific information related to the error.
          sig { returns(T::Hash[Symbol, T::Array[String]]) }
          attr_accessor :context

          # The detailed error objects.
          sig { returns(T::Array[HubspotSDK::ErrorDetail]) }
          attr_accessor :errors

          # URLs linking to documentation or resources associated with the error.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :links

          # A human-readable string describing the error and possible remediation steps.
          sig { returns(String) }
          attr_accessor :message

          # The HTTP status code associated with the error.
          sig { returns(String) }
          attr_accessor :status

          # A unique ID for the error instance.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # A more specific error category within each main category.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :sub_category

          sig { params(sub_category: T.anything).void }
          attr_writer :sub_category

          # Ye olde error
          sig do
            params(
              category: String,
              context: T::Hash[Symbol, T::Array[String]],
              errors: T::Array[HubspotSDK::ErrorDetail::OrHash],
              links: T::Hash[Symbol, String],
              message: String,
              status: String,
              id: String,
              sub_category: T.anything
            ).returns(T.attached_class)
          end
          def self.new(
            # The main category of the error.
            category:,
            # Additional context-specific information related to the error.
            context:,
            # The detailed error objects.
            errors:,
            # URLs linking to documentation or resources associated with the error.
            links:,
            # A human-readable string describing the error and possible remediation steps.
            message:,
            # The HTTP status code associated with the error.
            status:,
            # A unique ID for the error instance.
            id: nil,
            # A more specific error category within each main category.
            sub_category: nil
          )
          end

          sig do
            override.returns(
              {
                category: String,
                context: T::Hash[Symbol, T::Array[String]],
                errors: T::Array[HubspotSDK::ErrorDetail],
                links: T::Hash[Symbol, String],
                message: String,
                status: String,
                id: String,
                sub_category: T.anything
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
