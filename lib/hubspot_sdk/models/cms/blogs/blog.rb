# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        # @see HubSpotSDK::Resources::Cms::Blogs::Settings#list
        class Blog < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique ID of the Blog.
          #
          #   @return [String]
          required :id, String

          # @!attribute absolute_url
          #   Blog's root URL
          #
          #   @return [String]
          required :absolute_url, String, api_name: :absoluteUrl

          # @!attribute allow_comments
          #   Boolean determining whether or not this blog allows public comments.
          #
          #   @return [Boolean]
          required :allow_comments, HubSpotSDK::Internal::Type::Boolean, api_name: :allowComments

          # @!attribute created
          #   The timestamp (ISO8601 format) when this blog was created.
          #
          #   @return [Time]
          required :created, Time

          # @!attribute deleted_at
          #   The timestamp (ISO8601 format) when this Blog was deleted.
          #
          #   @return [Time]
          required :deleted_at, Time, api_name: :deletedAt

          # @!attribute description
          #   The Description of this Blog.
          #
          #   @return [String]
          required :description, String

          # @!attribute html_title
          #   The html title of this Blog.
          #
          #   @return [String]
          required :html_title, String, api_name: :htmlTitle

          # @!attribute language
          #   The explicitly defined language of the Blog. If null, the Blog will default to
          #   the language of the Domain.
          #
          #   @return [Symbol, HubSpotSDK::Models::Cms::Blogs::Blog::Language]
          required :language, enum: -> { HubSpotSDK::Cms::Blogs::Blog::Language }

          # @!attribute listing_page_id
          #
          #   @return [String]
          required :listing_page_id, String, api_name: :listingPageId

          # @!attribute name
          #   The internal name of the blog.
          #
          #   @return [String]
          required :name, String

          # @!attribute public_access_rules
          #   Rules for require member registration to access private content.
          #
          #   @return [Array<Object>]
          required :public_access_rules,
                   HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown],
                   api_name: :publicAccessRules

          # @!attribute public_access_rules_enabled
          #   Boolean to determine whether or not to respect publicAccessRules.
          #
          #   @return [Boolean]
          required :public_access_rules_enabled,
                   HubSpotSDK::Internal::Type::Boolean,
                   api_name: :publicAccessRulesEnabled

          # @!attribute public_title
          #   The public title of this Blog.
          #
          #   @return [String]
          required :public_title, String, api_name: :publicTitle

          # @!attribute slug
          #   The path of the this blog. This field is appended to the domain to construct the
          #   url of this blog.
          #
          #   @return [String]
          required :slug, String

          # @!attribute translated_from_id
          #   ID of the primary Blog this object was translated from.
          #
          #   @return [String]
          required :translated_from_id, String, api_name: :translatedFromId

          # @!attribute updated
          #   The timestamp (ISO8601 format) when this blog was updated.
          #
          #   @return [Time]
          required :updated, Time

          # @!method initialize(id:, absolute_url:, allow_comments:, created:, deleted_at:, description:, html_title:, language:, listing_page_id:, name:, public_access_rules:, public_access_rules_enabled:, public_title:, slug:, translated_from_id:, updated:)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Cms::Blogs::Blog} for more details.
          #
          #   @param id [String] The unique ID of the Blog.
          #
          #   @param absolute_url [String] Blog's root URL
          #
          #   @param allow_comments [Boolean] Boolean determining whether or not this blog allows public comments.
          #
          #   @param created [Time] The timestamp (ISO8601 format) when this blog was created.
          #
          #   @param deleted_at [Time] The timestamp (ISO8601 format) when this Blog was deleted.
          #
          #   @param description [String] The Description of this Blog.
          #
          #   @param html_title [String] The html title of this Blog.
          #
          #   @param language [Symbol, HubSpotSDK::Models::Cms::Blogs::Blog::Language] The explicitly defined language of the Blog. If null, the Blog will default to t
          #
          #   @param listing_page_id [String]
          #
          #   @param name [String] The internal name of the blog.
          #
          #   @param public_access_rules [Array<Object>] Rules for require member registration to access private content.
          #
          #   @param public_access_rules_enabled [Boolean] Boolean to determine whether or not to respect publicAccessRules.
          #
          #   @param public_title [String] The public title of this Blog.
          #
          #   @param slug [String] The path of the this blog. This field is appended to the domain to construct the
          #
          #   @param translated_from_id [String] ID of the primary Blog this object was translated from.
          #
          #   @param updated [Time] The timestamp (ISO8601 format) when this blog was updated.

          # The explicitly defined language of the Blog. If null, the Blog will default to
          # the language of the Domain.
          #
          # @see HubSpotSDK::Models::Cms::Blogs::Blog#language
          module Language
            extend HubSpotSDK::Internal::Type::Enum

            AA = :aa
            AB = :ab
            AE = :ae
            AF = :af
            AF_NA = :"af-na"
            AF_ZA = :"af-za"
            AGQ = :agq
            AGQ_CM = :"agq-cm"
            AK = :ak
            AK_GH = :"ak-gh"
            AM = :am
            AM_ET = :"am-et"
            AN = :an
            ANN = :ann
            ANN_NG = :"ann-ng"
            AR = :ar
            AR_001 = :"ar-001"
            AR_AE = :"ar-ae"
            AR_BH = :"ar-bh"
            AR_DJ = :"ar-dj"
            AR_DZ = :"ar-dz"
            AR_EG = :"ar-eg"
            AR_EH = :"ar-eh"
            AR_ER = :"ar-er"
            AR_IL = :"ar-il"
            AR_IQ = :"ar-iq"
            AR_JO = :"ar-jo"
            AR_KM = :"ar-km"
            AR_KW = :"ar-kw"
            AR_LB = :"ar-lb"
            AR_LY = :"ar-ly"
            AR_MA = :"ar-ma"
            AR_MR = :"ar-mr"
            AR_OM = :"ar-om"
            AR_PS = :"ar-ps"
            AR_QA = :"ar-qa"
            AR_SA = :"ar-sa"
            AR_SD = :"ar-sd"
            AR_SO = :"ar-so"
            AR_SS = :"ar-ss"
            AR_SY = :"ar-sy"
            AR_TD = :"ar-td"
            AR_TN = :"ar-tn"
            AR_YE = :"ar-ye"
            AS = :as
            AS_IN = :"as-in"
            ASA = :asa
            ASA_TZ = :"asa-tz"
            AST = :ast
            AST_ES = :"ast-es"
            AV = :av
            AY = :ay
            AZ = :az
            AZ_AZ = :"az-az"
            BA = :ba
            BAS = :bas
            BAS_CM = :"bas-cm"
            BE = :be
            BE_BY = :"be-by"
            BEM = :bem
            BEM_ZM = :"bem-zm"
            BEZ = :bez
            BEZ_TZ = :"bez-tz"
            BG = :bg
            BG_BG = :"bg-bg"
            BGC = :bgc
            BGC_IN = :"bgc-in"
            BHO = :bho
            BHO_IN = :"bho-in"
            BI = :bi
            BM = :bm
            BM_ML = :"bm-ml"
            BN = :bn
            BN_BD = :"bn-bd"
            BN_IN = :"bn-in"
            BO = :bo
            BO_CN = :"bo-cn"
            BO_IN = :"bo-in"
            BR = :br
            BR_FR = :"br-fr"
            BRX = :brx
            BRX_IN = :"brx-in"
            BS = :bs
            BS_BA = :"bs-ba"
            CA = :ca
            CA_AD = :"ca-ad"
            CA_ES = :"ca-es"
            CA_FR = :"ca-fr"
            CA_IT = :"ca-it"
            CCP = :ccp
            CCP_BD = :"ccp-bd"
            CCP_IN = :"ccp-in"
            CE = :ce
            CE_RU = :"ce-ru"
            CEB = :ceb
            CEB_PH = :"ceb-ph"
            CGG = :cgg
            CGG_UG = :"cgg-ug"
            CH = :ch
            CHR = :chr
            CHR_US = :"chr-us"
            CKB = :ckb
            CKB_IQ = :"ckb-iq"
            CKB_IR = :"ckb-ir"
            CO = :co
            CR = :cr
            CS = :cs
            CS_CZ = :"cs-cz"
            CU = :cu
            CU_RU = :"cu-ru"
            CV = :cv
            CV_RU = :"cv-ru"
            CY = :cy
            CY_GB = :"cy-gb"
            DA = :da
            DA_DK = :"da-dk"
            DA_GL = :"da-gl"
            DAV = :dav
            DAV_KE = :"dav-ke"
            DE = :de
            DE_AT = :"de-at"
            DE_BE = :"de-be"
            DE_CH = :"de-ch"
            DE_DE = :"de-de"
            DE_GR = :"de-gr"
            DE_IT = :"de-it"
            DE_LI = :"de-li"
            DE_LU = :"de-lu"
            DJE = :dje
            DJE_NE = :"dje-ne"
            DOI = :doi
            DOI_IN = :"doi-in"
            DSB = :dsb
            DSB_DE = :"dsb-de"
            DUA = :dua
            DUA_CM = :"dua-cm"
            DV = :dv
            DYO = :dyo
            DYO_SN = :"dyo-sn"
            DZ = :dz
            DZ_BT = :"dz-bt"
            EBU = :ebu
            EBU_KE = :"ebu-ke"
            EE = :ee
            EE_GH = :"ee-gh"
            EE_TG = :"ee-tg"
            EL = :el
            EL_CY = :"el-cy"
            EL_GR = :"el-gr"
            EN = :en
            EN_001 = :"en-001"
            EN_150 = :"en-150"
            EN_AE = :"en-ae"
            EN_AG = :"en-ag"
            EN_AI = :"en-ai"
            EN_AS = :"en-as"
            EN_AT = :"en-at"
            EN_AU = :"en-au"
            EN_BB = :"en-bb"
            EN_BE = :"en-be"
            EN_BI = :"en-bi"
            EN_BM = :"en-bm"
            EN_BS = :"en-bs"
            EN_BW = :"en-bw"
            EN_BZ = :"en-bz"
            EN_CA = :"en-ca"
            EN_CC = :"en-cc"
            EN_CH = :"en-ch"
            EN_CK = :"en-ck"
            EN_CM = :"en-cm"
            EN_CN = :"en-cn"
            EN_CX = :"en-cx"
            EN_CY = :"en-cy"
            EN_DE = :"en-de"
            EN_DG = :"en-dg"
            EN_DK = :"en-dk"
            EN_DM = :"en-dm"
            EN_EE = :"en-ee"
            EN_EG = :"en-eg"
            EN_ER = :"en-er"
            EN_ES = :"en-es"
            EN_FI = :"en-fi"
            EN_FJ = :"en-fj"
            EN_FK = :"en-fk"
            EN_FM = :"en-fm"
            EN_FR = :"en-fr"
            EN_GB = :"en-gb"
            EN_GD = :"en-gd"
            EN_GG = :"en-gg"
            EN_GH = :"en-gh"
            EN_GI = :"en-gi"
            EN_GM = :"en-gm"
            EN_GU = :"en-gu"
            EN_GY = :"en-gy"
            EN_HK = :"en-hk"
            EN_ID = :"en-id"
            EN_IE = :"en-ie"
            EN_IL = :"en-il"
            EN_IM = :"en-im"
            EN_IN = :"en-in"
            EN_IO = :"en-io"
            EN_JE = :"en-je"
            EN_JM = :"en-jm"
            EN_KE = :"en-ke"
            EN_KI = :"en-ki"
            EN_KN = :"en-kn"
            EN_KY = :"en-ky"
            EN_LC = :"en-lc"
            EN_LR = :"en-lr"
            EN_LS = :"en-ls"
            EN_LU = :"en-lu"
            EN_MG = :"en-mg"
            EN_MH = :"en-mh"
            EN_MO = :"en-mo"
            EN_MP = :"en-mp"
            EN_MS = :"en-ms"
            EN_MT = :"en-mt"
            EN_MU = :"en-mu"
            EN_MV = :"en-mv"
            EN_MW = :"en-mw"
            EN_MX = :"en-mx"
            EN_MY = :"en-my"
            EN_NA = :"en-na"
            EN_NF = :"en-nf"
            EN_NG = :"en-ng"
            EN_NL = :"en-nl"
            EN_NR = :"en-nr"
            EN_NU = :"en-nu"
            EN_NZ = :"en-nz"
            EN_PG = :"en-pg"
            EN_PH = :"en-ph"
            EN_PK = :"en-pk"
            EN_PN = :"en-pn"
            EN_PR = :"en-pr"
            EN_PT = :"en-pt"
            EN_PW = :"en-pw"
            EN_RW = :"en-rw"
            EN_SB = :"en-sb"
            EN_SC = :"en-sc"
            EN_SD = :"en-sd"
            EN_SE = :"en-se"
            EN_SG = :"en-sg"
            EN_SH = :"en-sh"
            EN_SI = :"en-si"
            EN_SL = :"en-sl"
            EN_SS = :"en-ss"
            EN_SX = :"en-sx"
            EN_SZ = :"en-sz"
            EN_TC = :"en-tc"
            EN_TH = :"en-th"
            EN_TK = :"en-tk"
            EN_TN = :"en-tn"
            EN_TO = :"en-to"
            EN_TT = :"en-tt"
            EN_TV = :"en-tv"
            EN_TZ = :"en-tz"
            EN_UG = :"en-ug"
            EN_UM = :"en-um"
            EN_US = :"en-us"
            EN_VC = :"en-vc"
            EN_VG = :"en-vg"
            EN_VI = :"en-vi"
            EN_VN = :"en-vn"
            EN_VU = :"en-vu"
            EN_WS = :"en-ws"
            EN_ZA = :"en-za"
            EN_ZM = :"en-zm"
            EN_ZW = :"en-zw"
            EO = :eo
            EO_001 = :"eo-001"
            ES = :es
            ES_419 = :"es-419"
            ES_AR = :"es-ar"
            ES_BO = :"es-bo"
            ES_BR = :"es-br"
            ES_BZ = :"es-bz"
            ES_CL = :"es-cl"
            ES_CO = :"es-co"
            ES_CR = :"es-cr"
            ES_CU = :"es-cu"
            ES_DO = :"es-do"
            ES_EA = :"es-ea"
            ES_EC = :"es-ec"
            ES_ES = :"es-es"
            ES_GQ = :"es-gq"
            ES_GT = :"es-gt"
            ES_HN = :"es-hn"
            ES_IC = :"es-ic"
            ES_MX = :"es-mx"
            ES_NI = :"es-ni"
            ES_PA = :"es-pa"
            ES_PE = :"es-pe"
            ES_PH = :"es-ph"
            ES_PR = :"es-pr"
            ES_PY = :"es-py"
            ES_SV = :"es-sv"
            ES_US = :"es-us"
            ES_UY = :"es-uy"
            ES_VE = :"es-ve"
            ET = :et
            ET_EE = :"et-ee"
            EU = :eu
            EU_ES = :"eu-es"
            EWO = :ewo
            EWO_CM = :"ewo-cm"
            FA = :fa
            FA_AF = :"fa-af"
            FA_IR = :"fa-ir"
            FF = :ff
            FF_BF = :"ff-bf"
            FF_CM = :"ff-cm"
            FF_GH = :"ff-gh"
            FF_GM = :"ff-gm"
            FF_GN = :"ff-gn"
            FF_GW = :"ff-gw"
            FF_LR = :"ff-lr"
            FF_MR = :"ff-mr"
            FF_NE = :"ff-ne"
            FF_NG = :"ff-ng"
            FF_SL = :"ff-sl"
            FF_SN = :"ff-sn"
            FI = :fi
            FI_FI = :"fi-fi"
            FIL = :fil
            FIL_PH = :"fil-ph"
            FJ = :fj
            FO = :fo
            FO_DK = :"fo-dk"
            FO_FO = :"fo-fo"
            FR = :fr
            FR_BE = :"fr-be"
            FR_BF = :"fr-bf"
            FR_BI = :"fr-bi"
            FR_BJ = :"fr-bj"
            FR_BL = :"fr-bl"
            FR_CA = :"fr-ca"
            FR_CD = :"fr-cd"
            FR_CF = :"fr-cf"
            FR_CG = :"fr-cg"
            FR_CH = :"fr-ch"
            FR_CI = :"fr-ci"
            FR_CM = :"fr-cm"
            FR_DJ = :"fr-dj"
            FR_DZ = :"fr-dz"
            FR_FR = :"fr-fr"
            FR_GA = :"fr-ga"
            FR_GF = :"fr-gf"
            FR_GN = :"fr-gn"
            FR_GP = :"fr-gp"
            FR_GQ = :"fr-gq"
            FR_HT = :"fr-ht"
            FR_KM = :"fr-km"
            FR_LU = :"fr-lu"
            FR_MA = :"fr-ma"
            FR_MC = :"fr-mc"
            FR_MF = :"fr-mf"
            FR_MG = :"fr-mg"
            FR_ML = :"fr-ml"
            FR_MQ = :"fr-mq"
            FR_MR = :"fr-mr"
            FR_MU = :"fr-mu"
            FR_NC = :"fr-nc"
            FR_NE = :"fr-ne"
            FR_PF = :"fr-pf"
            FR_PM = :"fr-pm"
            FR_RE = :"fr-re"
            FR_RW = :"fr-rw"
            FR_SC = :"fr-sc"
            FR_SN = :"fr-sn"
            FR_SY = :"fr-sy"
            FR_TD = :"fr-td"
            FR_TG = :"fr-tg"
            FR_TN = :"fr-tn"
            FR_VU = :"fr-vu"
            FR_WF = :"fr-wf"
            FR_YT = :"fr-yt"
            FRR = :frr
            FRR_DE = :"frr-de"
            FUR = :fur
            FUR_IT = :"fur-it"
            FY = :fy
            FY_NL = :"fy-nl"
            GA = :ga
            GA_GB = :"ga-gb"
            GA_IE = :"ga-ie"
            GD = :gd
            GD_GB = :"gd-gb"
            GL = :gl
            GL_ES = :"gl-es"
            GN = :gn
            GSW = :gsw
            GSW_CH = :"gsw-ch"
            GSW_FR = :"gsw-fr"
            GSW_LI = :"gsw-li"
            GU = :gu
            GU_IN = :"gu-in"
            GUZ = :guz
            GUZ_KE = :"guz-ke"
            GV = :gv
            GV_IM = :"gv-im"
            HA = :ha
            HA_GH = :"ha-gh"
            HA_NE = :"ha-ne"
            HA_NG = :"ha-ng"
            HAW = :haw
            HAW_US = :"haw-us"
            HE = :he
            HE_IL = :"he-il"
            HI = :hi
            HI_IN = :"hi-in"
            HMN = :hmn
            HO = :ho
            HR = :hr
            HR_BA = :"hr-ba"
            HR_HR = :"hr-hr"
            HSB = :hsb
            HSB_DE = :"hsb-de"
            HT = :ht
            HU = :hu
            HU_HU = :"hu-hu"
            HY = :hy
            HY_AM = :"hy-am"
            HZ = :hz
            IA = :ia
            IA_001 = :"ia-001"
            ID = :id
            ID_ID = :"id-id"
            IE = :ie
            IG = :ig
            IG_NG = :"ig-ng"
            II = :ii
            II_CN = :"ii-cn"
            IK = :ik
            IO = :io
            IS = :is
            IS_IS = :"is-is"
            IT = :it
            IT_CH = :"it-ch"
            IT_IT = :"it-it"
            IT_SM = :"it-sm"
            IT_VA = :"it-va"
            IU = :iu
            JA = :ja
            JA_JP = :"ja-jp"
            JGO = :jgo
            JGO_CM = :"jgo-cm"
            JMC = :jmc
            JMC_TZ = :"jmc-tz"
            JV = :jv
            JV_ID = :"jv-id"
            KA = :ka
            KA_GE = :"ka-ge"
            KAB = :kab
            KAB_DZ = :"kab-dz"
            KAM = :kam
            KAM_KE = :"kam-ke"
            KAR = :kar
            KDE = :kde
            KDE_TZ = :"kde-tz"
            KEA = :kea
            KEA_CV = :"kea-cv"
            KG = :kg
            KGP = :kgp
            KGP_BR = :"kgp-br"
            KH = :kh
            KHQ = :khq
            KHQ_ML = :"khq-ml"
            KI = :ki
            KI_KE = :"ki-ke"
            KJ = :kj
            KK = :kk
            KK_KZ = :"kk-kz"
            KKJ = :kkj
            KKJ_CM = :"kkj-cm"
            KL = :kl
            KL_GL = :"kl-gl"
            KLN = :kln
            KLN_KE = :"kln-ke"
            KM = :km
            KM_KH = :"km-kh"
            KN = :kn
            KN_IN = :"kn-in"
            KO = :ko
            KO_KP = :"ko-kp"
            KO_KR = :"ko-kr"
            KOK = :kok
            KOK_IN = :"kok-in"
            KR = :kr
            KS = :ks
            KS_IN = :"ks-in"
            KSB = :ksb
            KSB_TZ = :"ksb-tz"
            KSF = :ksf
            KSF_CM = :"ksf-cm"
            KSH = :ksh
            KSH_DE = :"ksh-de"
            KU = :ku
            KU_TR = :"ku-tr"
            KV = :kv
            KW = :kw
            KW_GB = :"kw-gb"
            KY = :ky
            KY_KG = :"ky-kg"
            LA = :la
            LAG = :lag
            LAG_TZ = :"lag-tz"
            LB = :lb
            LB_LU = :"lb-lu"
            LG = :lg
            LG_UG = :"lg-ug"
            LI = :li
            LKT = :lkt
            LKT_US = :"lkt-us"
            LN = :ln
            LN_AO = :"ln-ao"
            LN_CD = :"ln-cd"
            LN_CF = :"ln-cf"
            LN_CG = :"ln-cg"
            LO = :lo
            LO_LA = :"lo-la"
            LRC = :lrc
            LRC_IQ = :"lrc-iq"
            LRC_IR = :"lrc-ir"
            LT = :lt
            LT_LT = :"lt-lt"
            LU = :lu
            LU_CD = :"lu-cd"
            LUO = :luo
            LUO_KE = :"luo-ke"
            LUY = :luy
            LUY_KE = :"luy-ke"
            LV = :lv
            LV_LV = :"lv-lv"
            MAI = :mai
            MAI_IN = :"mai-in"
            MAS = :mas
            MAS_KE = :"mas-ke"
            MAS_TZ = :"mas-tz"
            MDF = :mdf
            MDF_RU = :"mdf-ru"
            MER = :mer
            MER_KE = :"mer-ke"
            MFE = :mfe
            MFE_MU = :"mfe-mu"
            MG = :mg
            MG_MG = :"mg-mg"
            MGH = :mgh
            MGH_MZ = :"mgh-mz"
            MGO = :mgo
            MGO_CM = :"mgo-cm"
            MH = :mh
            MI = :mi
            MI_NZ = :"mi-nz"
            MK = :mk
            MK_MK = :"mk-mk"
            ML = :ml
            ML_IN = :"ml-in"
            MN = :mn
            MN_MN = :"mn-mn"
            MNI = :mni
            MNI_IN = :"mni-in"
            MR = :mr
            MR_IN = :"mr-in"
            MS = :ms
            MS_BN = :"ms-bn"
            MS_ID = :"ms-id"
            MS_MY = :"ms-my"
            MS_SG = :"ms-sg"
            MT = :mt
            MT_MT = :"mt-mt"
            MUA = :mua
            MUA_CM = :"mua-cm"
            MY = :my
            MY_MM = :"my-mm"
            MZN = :mzn
            MZN_IR = :"mzn-ir"
            NA = :na
            NAQ = :naq
            NAQ_NA = :"naq-na"
            NB = :nb
            NB_NO = :"nb-no"
            NB_SJ = :"nb-sj"
            ND = :nd
            ND_ZW = :"nd-zw"
            NDS = :nds
            NDS_DE = :"nds-de"
            NDS_NL = :"nds-nl"
            NE = :ne
            NE_IN = :"ne-in"
            NE_NP = :"ne-np"
            NG = :ng
            NL = :nl
            NL_AW = :"nl-aw"
            NL_BE = :"nl-be"
            NL_BQ = :"nl-bq"
            NL_CH = :"nl-ch"
            NL_CW = :"nl-cw"
            NL_LU = :"nl-lu"
            NL_NL = :"nl-nl"
            NL_SR = :"nl-sr"
            NL_SX = :"nl-sx"
            NMG = :nmg
            NMG_CM = :"nmg-cm"
            NN = :nn
            NN_NO = :"nn-no"
            NNH = :nnh
            NNH_CM = :"nnh-cm"
            NO = :no
            NO_NO = :"no-no"
            NR = :nr
            NUS = :nus
            NUS_SS = :"nus-ss"
            NV = :nv
            NY = :ny
            NYN = :nyn
            NYN_UG = :"nyn-ug"
            OC = :oc
            OC_ES = :"oc-es"
            OC_FR = :"oc-fr"
            OJ = :oj
            OM = :om
            OM_ET = :"om-et"
            OM_KE = :"om-ke"
            OR = :or
            OR_IN = :"or-in"
            OS = :os
            OS_GE = :"os-ge"
            OS_RU = :"os-ru"
            PA = :pa
            PA_IN = :"pa-in"
            PA_PK = :"pa-pk"
            PCM = :pcm
            PCM_NG = :"pcm-ng"
            PI = :pi
            PIS = :pis
            PIS_SB = :"pis-sb"
            PL = :pl
            PL_PL = :"pl-pl"
            PRG = :prg
            PRG_001 = :"prg-001"
            PS = :ps
            PS_AF = :"ps-af"
            PS_PK = :"ps-pk"
            PT = :pt
            PT_AO = :"pt-ao"
            PT_BR = :"pt-br"
            PT_CH = :"pt-ch"
            PT_CV = :"pt-cv"
            PT_GQ = :"pt-gq"
            PT_GW = :"pt-gw"
            PT_LU = :"pt-lu"
            PT_MO = :"pt-mo"
            PT_MZ = :"pt-mz"
            PT_PT = :"pt-pt"
            PT_ST = :"pt-st"
            PT_TL = :"pt-tl"
            QU = :qu
            QU_BO = :"qu-bo"
            QU_EC = :"qu-ec"
            QU_PE = :"qu-pe"
            RAJ = :raj
            RAJ_IN = :"raj-in"
            RM = :rm
            RM_CH = :"rm-ch"
            RN = :rn
            RN_BI = :"rn-bi"
            RO = :ro
            RO_MD = :"ro-md"
            RO_RO = :"ro-ro"
            ROF = :rof
            ROF_TZ = :"rof-tz"
            RU = :ru
            RU_BY = :"ru-by"
            RU_KG = :"ru-kg"
            RU_KZ = :"ru-kz"
            RU_MD = :"ru-md"
            RU_RU = :"ru-ru"
            RU_UA = :"ru-ua"
            RW = :rw
            RW_RW = :"rw-rw"
            RWK = :rwk
            RWK_TZ = :"rwk-tz"
            SA = :sa
            SA_IN = :"sa-in"
            SAH = :sah
            SAH_RU = :"sah-ru"
            SAQ = :saq
            SAQ_KE = :"saq-ke"
            SAT = :sat
            SAT_IN = :"sat-in"
            SBP = :sbp
            SBP_TZ = :"sbp-tz"
            SC = :sc
            SC_IT = :"sc-it"
            SD = :sd
            SD_IN = :"sd-in"
            SD_PK = :"sd-pk"
            SE = :se
            SE_FI = :"se-fi"
            SE_NO = :"se-no"
            SE_SE = :"se-se"
            SEH = :seh
            SEH_MZ = :"seh-mz"
            SES = :ses
            SES_ML = :"ses-ml"
            SG = :sg
            SG_CF = :"sg-cf"
            SHI = :shi
            SHI_MA = :"shi-ma"
            SI = :si
            SI_LK = :"si-lk"
            SK = :sk
            SK_SK = :"sk-sk"
            SL = :sl
            SL_SI = :"sl-si"
            SM = :sm
            SMN = :smn
            SMN_FI = :"smn-fi"
            SMS = :sms
            SMS_FI = :"sms-fi"
            SN = :sn
            SN_ZW = :"sn-zw"
            SO = :so
            SO_DJ = :"so-dj"
            SO_ET = :"so-et"
            SO_KE = :"so-ke"
            SO_SO = :"so-so"
            SQ = :sq
            SQ_AL = :"sq-al"
            SQ_MK = :"sq-mk"
            SQ_XK = :"sq-xk"
            SR = :sr
            SR_BA = :"sr-ba"
            SR_CS = :"sr-cs"
            SR_ME = :"sr-me"
            SR_RS = :"sr-rs"
            SR_XK = :"sr-xk"
            SS = :ss
            ST = :st
            SU = :su
            SU_ID = :"su-id"
            SV = :sv
            SV_AX = :"sv-ax"
            SV_FI = :"sv-fi"
            SV_SE = :"sv-se"
            SW = :sw
            SW_CD = :"sw-cd"
            SW_KE = :"sw-ke"
            SW_TZ = :"sw-tz"
            SW_UG = :"sw-ug"
            SY = :sy
            TA = :ta
            TA_IN = :"ta-in"
            TA_LK = :"ta-lk"
            TA_MY = :"ta-my"
            TA_SG = :"ta-sg"
            TE = :te
            TE_IN = :"te-in"
            TEO = :teo
            TEO_KE = :"teo-ke"
            TEO_UG = :"teo-ug"
            TG = :tg
            TG_TJ = :"tg-tj"
            TH = :th
            TH_TH = :"th-th"
            TI = :ti
            TI_ER = :"ti-er"
            TI_ET = :"ti-et"
            TK = :tk
            TK_TM = :"tk-tm"
            TL = :tl
            TN = :tn
            TO = :to
            TO_TO = :"to-to"
            TOK = :tok
            TOK_001 = :"tok-001"
            TR = :tr
            TR_CY = :"tr-cy"
            TR_TR = :"tr-tr"
            TS = :ts
            TT = :tt
            TT_RU = :"tt-ru"
            TW = :tw
            TWQ = :twq
            TWQ_NE = :"twq-ne"
            TY = :ty
            TZM = :tzm
            TZM_MA = :"tzm-ma"
            UG = :ug
            UG_CN = :"ug-cn"
            UK = :uk
            UK_UA = :"uk-ua"
            UR = :ur
            UR_IN = :"ur-in"
            UR_PK = :"ur-pk"
            UZ = :uz
            UZ_AF = :"uz-af"
            UZ_UZ = :"uz-uz"
            VAI = :vai
            VAI_LR = :"vai-lr"
            VE = :ve
            VI = :vi
            VI_VN = :"vi-vn"
            VO = :vo
            VO_001 = :"vo-001"
            VUN = :vun
            VUN_TZ = :"vun-tz"
            WA = :wa
            WAE = :wae
            WAE_CH = :"wae-ch"
            WO = :wo
            WO_SN = :"wo-sn"
            XH = :xh
            XH_ZA = :"xh-za"
            XOG = :xog
            XOG_UG = :"xog-ug"
            YAV = :yav
            YAV_CM = :"yav-cm"
            YI = :yi
            YI_001 = :"yi-001"
            YO = :yo
            YO_BJ = :"yo-bj"
            YO_NG = :"yo-ng"
            YRL = :yrl
            YRL_BR = :"yrl-br"
            YRL_CO = :"yrl-co"
            YRL_VE = :"yrl-ve"
            YUE = :yue
            YUE_CN = :"yue-cn"
            YUE_HK = :"yue-hk"
            ZA = :za
            ZGH = :zgh
            ZGH_MA = :"zgh-ma"
            ZH = :zh
            ZH_CN = :"zh-cn"
            ZH_HANS = :"zh-hans"
            ZH_HANT = :"zh-hant"
            ZH_HK = :"zh-hk"
            ZH_MO = :"zh-mo"
            ZH_SG = :"zh-sg"
            ZH_TW = :"zh-tw"
            ZU = :zu
            ZU_ZA = :"zu-za"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      Blog = Blogs::Blog
    end
  end
end
