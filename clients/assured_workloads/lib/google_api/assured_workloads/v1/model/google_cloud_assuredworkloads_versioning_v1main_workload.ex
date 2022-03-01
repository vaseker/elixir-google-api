# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkload do
  @moduledoc """
  An Workload object for managing highly regulated workloads of cloud customers.

  ## Attributes

  *   `billingAccount` (*type:* `String.t`, *default:* `nil`) - Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  *   `cjisSettings` (*type:* `GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadCJISSettings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for CJIS.
  *   `complianceRegime` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Compliance Regime associated with this workload.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Immutable. The Workload creation timestamp.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  *   `enableSovereignControls` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  *   `fedrampHighSettings` (*type:* `GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadFedrampHighSettings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for FedRAMP High.
  *   `fedrampModerateSettings` (*type:* `GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadFedrampModerateSettings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for FedRAMP Moderate.
  *   `il4Settings` (*type:* `GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadIL4Settings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for IL4.
  *   `kajEnrollmentState` (*type:* `String.t`, *default:* `nil`) - Output only. Represents the KAJ enrollment state of the given workload.
  *   `kmsSettings` (*type:* `GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadKMSSettings.t`, *default:* `nil`) - Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels applied to the workload.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  *   `provisionedResourcesParent` (*type:* `String.t`, *default:* `nil`) - Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  *   `resourceSettings` (*type:* `list(GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceSettings.t)`, *default:* `nil`) - Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  *   `resources` (*type:* `list(GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceInfo.t)`, *default:* `nil`) - Output only. The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  *   `saaEnrollmentResponse` (*type:* `GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadSaaEnrollmentResponse.t`, *default:* `nil`) - Output only. Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during GetWorkload call. In failure cases, user friendly error message is shown in SAA details page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingAccount => String.t() | nil,
          :cjisSettings =>
            GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadCJISSettings.t()
            | nil,
          :complianceRegime => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :enableSovereignControls => boolean() | nil,
          :etag => String.t() | nil,
          :fedrampHighSettings =>
            GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadFedrampHighSettings.t()
            | nil,
          :fedrampModerateSettings =>
            GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadFedrampModerateSettings.t()
            | nil,
          :il4Settings =>
            GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadIL4Settings.t()
            | nil,
          :kajEnrollmentState => String.t() | nil,
          :kmsSettings =>
            GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadKMSSettings.t()
            | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :provisionedResourcesParent => String.t() | nil,
          :resourceSettings =>
            list(
              GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceSettings.t()
            )
            | nil,
          :resources =>
            list(
              GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceInfo.t()
            )
            | nil,
          :saaEnrollmentResponse =>
            GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadSaaEnrollmentResponse.t()
            | nil
        }

  field(:billingAccount)

  field(:cjisSettings,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadCJISSettings
  )

  field(:complianceRegime)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:enableSovereignControls)
  field(:etag)

  field(:fedrampHighSettings,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadFedrampHighSettings
  )

  field(:fedrampModerateSettings,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadFedrampModerateSettings
  )

  field(:il4Settings,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadIL4Settings
  )

  field(:kajEnrollmentState)

  field(:kmsSettings,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadKMSSettings
  )

  field(:labels, type: :map)
  field(:name)
  field(:provisionedResourcesParent)

  field(:resourceSettings,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceSettings,
    type: :list
  )

  field(:resources,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceInfo,
    type: :list
  )

  field(:saaEnrollmentResponse,
    as:
      GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadSaaEnrollmentResponse
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkload do
  def decode(value, options) do
    GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkload.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
