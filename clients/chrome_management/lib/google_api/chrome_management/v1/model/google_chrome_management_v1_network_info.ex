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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkInfo do
  @moduledoc """
  Network device information. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_NETWORK_INFO

  ## Attributes

  *   `networkDevices` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkDevice.t)`, *default:* `nil`) - Output only. List of network devices.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :networkDevices =>
            list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkDevice.t())
            | nil
        }

  field(:networkDevices,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkDevice,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkInfo do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
