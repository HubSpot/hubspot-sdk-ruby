# typed: strong

module HubSpotSDK
  module Models
    class ErrorData < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::ErrorData, HubSpotSDK::Internal::AnyHash)
        end

      # The error category
      sig { returns(String) }
      attr_accessor :category

      # A unique identifier for the request. Include this value with any error reports
      # or support tickets
      sig { returns(String) }
      attr_accessor :correlation_id

      # A human readable message describing the error along with remediation steps where
      # appropriate
      sig { returns(String) }
      attr_accessor :message

      # Context about the error condition
      sig { returns(T.nilable(T::Hash[Symbol, T::Array[String]])) }
      attr_reader :context

      sig { params(context: T::Hash[Symbol, T::Array[String]]).void }
      attr_writer :context

      # further information about the error
      sig { returns(T.nilable(T::Array[HubSpotSDK::ErrorDetail])) }
      attr_reader :errors

      sig { params(errors: T::Array[HubSpotSDK::ErrorDetail::OrHash]).void }
      attr_writer :errors

      # A map of link names to associated URIs containing documentation about the error
      # or recommended remediation steps
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :links

      sig { params(links: T::Hash[Symbol, String]).void }
      attr_writer :links

      # A specific category that contains more specific detail about the error
      sig { returns(T.nilable(String)) }
      attr_reader :sub_category

      sig { params(sub_category: String).void }
      attr_writer :sub_category

      sig do
        params(
          category: String,
          correlation_id: String,
          message: String,
          context: T::Hash[Symbol, T::Array[String]],
          errors: T::Array[HubSpotSDK::ErrorDetail::OrHash],
          links: T::Hash[Symbol, String],
          sub_category: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The error category
        category:,
        # A unique identifier for the request. Include this value with any error reports
        # or support tickets
        correlation_id:,
        # A human readable message describing the error along with remediation steps where
        # appropriate
        message:,
        # Context about the error condition
        context: nil,
        # further information about the error
        errors: nil,
        # A map of link names to associated URIs containing documentation about the error
        # or recommended remediation steps
        links: nil,
        # A specific category that contains more specific detail about the error
        sub_category: nil
      )
      end

      sig do
        override.returns(
          {
            category: String,
            correlation_id: String,
            message: String,
            context: T::Hash[Symbol, T::Array[String]],
            errors: T::Array[HubSpotSDK::ErrorDetail],
            links: T::Hash[Symbol, String],
            sub_category: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
