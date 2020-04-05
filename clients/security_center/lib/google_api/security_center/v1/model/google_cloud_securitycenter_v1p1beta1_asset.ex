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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Asset do
  @moduledoc """
  Security Command Center representation of a Google Cloud
  resource.

  The Asset is a Security Command Center resource that captures information
  about a single Google Cloud resource. All modifications to an Asset are only
  within the context of Security Command Center and don't affect the referenced
  Google Cloud resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the asset was created in Security Command Center.
  *   `iamPolicy` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1IamPolicy.t`, *default:* `nil`) - Cloud IAM Policy information associated with the Google Cloud resource
      described by the Security Command Center asset. This information is managed
      and defined by the Google Cloud resource and cannot be modified by the
      user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The relative resource name of this asset. See:
      https://cloud.google.com/apis/design/resource_names#relative_resource_name
      Example:
      "organizations/{organization_id}/assets/{asset_id}".
  *   `resourceProperties` (*type:* `map()`, *default:* `nil`) - Resource managed properties. These properties are managed and defined by
      the Google Cloud resource and cannot be modified by the user.
  *   `securityCenterProperties` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties.t`, *default:* `nil`) - Security Command Center managed properties. These properties are managed by
      Security Command Center and cannot be modified by the user.
  *   `securityMarks` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1SecurityMarks.t`, *default:* `nil`) - User specified security marks. These marks are entirely managed by the user
      and come from the SecurityMarks resource that belongs to the asset.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the asset was last updated, added, or deleted in Cloud
      SCC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :iamPolicy =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1IamPolicy.t(),
          :name => String.t(),
          :resourceProperties => map(),
          :securityCenterProperties =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties.t(),
          :securityMarks =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1SecurityMarks.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)

  field(:iamPolicy,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1IamPolicy
  )

  field(:name)
  field(:resourceProperties, type: :map)

  field(:securityCenterProperties,
    as:
      GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
  )

  field(:securityMarks,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1SecurityMarks
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Asset do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Asset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Asset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
