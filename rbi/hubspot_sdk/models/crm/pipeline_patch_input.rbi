# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelinePatchInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelinePatchInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether the pipeline is archived. This property should only be provided when
        # restoring an archived pipeline. If it's provided in any other call, the request
        # will fail and a `400 Bad Request` will be returned.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # The order for displaying this pipeline. If two pipelines have a matching
        # `displayOrder`, they will be sorted alphabetically by label.
        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        # A unique label used to organize pipelines in HubSpot's UI
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(
            archived: T::Boolean,
            display_order: Integer,
            label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the pipeline is archived. This property should only be provided when
          # restoring an archived pipeline. If it's provided in any other call, the request
          # will fail and a `400 Bad Request` will be returned.
          archived: nil,
          # The order for displaying this pipeline. If two pipelines have a matching
          # `displayOrder`, they will be sorted alphabetically by label.
          display_order: nil,
          # A unique label used to organize pipelines in HubSpot's UI
          label: nil
        )
        end

        sig do
          override.returns(
            { archived: T::Boolean, display_order: Integer, label: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
