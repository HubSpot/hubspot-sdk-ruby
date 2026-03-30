# typed: strong

module HubspotSDK
  module Models
    class TaskLocator < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::TaskLocator, HubspotSDK::Internal::AnyHash)
        end

      # The unique identifier for the task.
      sig { returns(String) }
      attr_accessor :id

      # A map of link names to associated URIs containing documentation about the error
      # or recommended remediation steps
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :links

      sig { params(links: T::Hash[Symbol, String]).void }
      attr_writer :links

      sig do
        params(id: String, links: T::Hash[Symbol, String]).returns(
          T.attached_class
        )
      end
      def self.new(
        # The unique identifier for the task.
        id:,
        # A map of link names to associated URIs containing documentation about the error
        # or recommended remediation steps
        links: nil
      )
      end

      sig { override.returns({ id: String, links: T::Hash[Symbol, String] }) }
      def to_hash
      end
    end
  end
end
