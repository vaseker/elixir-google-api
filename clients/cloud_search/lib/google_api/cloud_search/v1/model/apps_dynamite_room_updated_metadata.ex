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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadata do
  @moduledoc """


  ## Attributes

  *   `groupDetailsMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadataGroupDetailsUpdatedMetadata.t`, *default:* `nil`) - 
  *   `groupLinkSharingEnabled` (*type:* `boolean()`, *default:* `nil`) - 
  *   `initiator` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteFrontendUser.t`, *default:* `nil`) - The user who initiated this room update. Complete member profiles, when ListTopicsRequest FetchOptions.USER is set. Otherwise, only the id will be filled in.
  *   `initiatorType` (*type:* `String.t`, *default:* `nil`) - The type of the user who initiated this room update.
  *   `name` (*type:* `String.t`, *default:* `nil`) - What was updated in the room.
  *   `renameMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadataRoomRenameMetadata.t`, *default:* `nil`) - 
  *   `visibility` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedGroupVisibility.t`, *default:* `nil`) - DEPRECATED: See GroupVisibility proto definition.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groupDetailsMetadata =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadataGroupDetailsUpdatedMetadata.t()
            | nil,
          :groupLinkSharingEnabled => boolean() | nil,
          :initiator => GoogleApi.CloudSearch.V1.Model.AppsDynamiteFrontendUser.t() | nil,
          :initiatorType => String.t() | nil,
          :name => String.t() | nil,
          :renameMetadata =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadataRoomRenameMetadata.t()
            | nil,
          :visibility =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedGroupVisibility.t() | nil
        }

  field(:groupDetailsMetadata,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadataGroupDetailsUpdatedMetadata
  )

  field(:groupLinkSharingEnabled)
  field(:initiator, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteFrontendUser)
  field(:initiatorType)
  field(:name)

  field(:renameMetadata,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadataRoomRenameMetadata
  )

  field(:visibility, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedGroupVisibility)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteRoomUpdatedMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end