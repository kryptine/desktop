// Copyright (c) 2020 Private Internet Access, Inc.
//
// This file is part of the Private Internet Access Desktop Client.
//
// The Private Internet Access Desktop Client is free software: you can
// redistribute it and/or modify it under the terms of the GNU General Public
// License as published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// The Private Internet Access Desktop Client is distributed in the hope that
// it will be useful, but WITHOUT ANY WARRANTY; without even the implied
// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with the Private Internet Access Desktop Client.  If not, see
// <https://www.gnu.org/licenses/>.

import QtQuick 2.9
Item {
  // Indices of the keyboard navigation columns in this row.
  //
  // The keyboard navigation model has three columns: 'app', 'mode', and 'remove':
  // - The 'app' column has no selectable action, but it seems surprising that
  //   the 'mode' column would be highlighted by default, and it isn't very
  //   consistent with the 'add app' row.
  // - We expect to add more controls in the future (rule types, etc.).  This
  //   model extends naturally to more columns.
  //
  // The accessibility model also has an additional column - 'path'.  The
  // keyboard model visually includes this in the 'app' column, but it's
  // separate for accessibility to keep the annotations to a reasonable length.
  readonly property var keyColumns: ({
    app: 0,
    mode: 1,
    remove: 2
  })

  readonly property var appModeChoices: [
    {name: uiTr("Bypass VPN")},
    {name: uiTr("Only VPN")}
  ]
  readonly property var otherAppModeChoices: [
    {name: uiTr("Bypass VPN")},
    {name: uiTr("Use VPN")}
  ]
}