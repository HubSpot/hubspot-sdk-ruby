# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class FormListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::FormListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # The form types to be included in the results.
        sig do
          returns(
            T.nilable(
              T::Array[
                HubspotSDK::Marketing::FormListParams::FormType::OrSymbol
              ]
            )
          )
        end
        attr_reader :form_types

        sig do
          params(
            form_types:
              T::Array[
                HubspotSDK::Marketing::FormListParams::FormType::OrSymbol
              ]
          ).void
        end
        attr_writer :form_types

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            after: String,
            archived: T::Boolean,
            form_types:
              T::Array[
                HubspotSDK::Marketing::FormListParams::FormType::OrSymbol
              ],
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # The form types to be included in the results.
          form_types: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              archived: T::Boolean,
              form_types:
                T::Array[
                  HubspotSDK::Marketing::FormListParams::FormType::OrSymbol
                ],
              limit: Integer,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module FormType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::FormListParams::FormType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT =
            T.let(
              :hubspot,
              HubspotSDK::Marketing::FormListParams::FormType::TaggedSymbol
            )
          CAPTURED =
            T.let(
              :captured,
              HubspotSDK::Marketing::FormListParams::FormType::TaggedSymbol
            )
          FLOW =
            T.let(
              :flow,
              HubspotSDK::Marketing::FormListParams::FormType::TaggedSymbol
            )
          BLOG_COMMENT =
            T.let(
              :blog_comment,
              HubspotSDK::Marketing::FormListParams::FormType::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              HubspotSDK::Marketing::FormListParams::FormType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FormListParams::FormType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
