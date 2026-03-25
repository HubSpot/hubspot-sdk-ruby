# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class FileColumn < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::FileColumn,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the column, represented as a string.
        sig { returns(String) }
        attr_accessor :name

        # The data type of the column, represented as a string.
        sig { returns(String) }
        attr_accessor :type

        sig { params(name: String, type: String).returns(T.attached_class) }
        def self.new(
          # The name of the column, represented as a string.
          name:,
          # The data type of the column, represented as a string.
          type:
        )
        end

        sig { override.returns({ name: String, type: String }) }
        def to_hash
        end
      end
    end
  end
end
