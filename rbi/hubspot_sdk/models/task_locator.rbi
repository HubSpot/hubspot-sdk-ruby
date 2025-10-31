# typed: strong

module HubspotSDK
  module Models
    class TaskLocator < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::TaskLocator, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :links

      sig { params(links: T::Hash[Symbol, String]).void }
      attr_writer :links

      sig do
        params(id: String, links: T::Hash[Symbol, String]).returns(
          T.attached_class
        )
      end
      def self.new(id:, links: nil)
      end

      sig { override.returns({ id: String, links: T::Hash[Symbol, String] }) }
      def to_hash
      end
    end
  end
end
