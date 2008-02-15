# 
# Copyright (C) 2008 Red Hat, Inc.
# Written by Scott Seago <sseago@redhat.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA  02110-1301, USA.  A copy of the GNU General Public License is
# also available at http://www.gnu.org/copyleft/gpl.html.

class Permission < ActiveRecord::Base
  # should belong_to _either_ a Hardware Pool _or_ a VM Library -- not both
  belongs_to :hardware_pool
  belongs_to :vm_library

  MONITOR = "monitor"
  ADMIN = "admin"
  DELEGATE = "delegate"
  PRIVILEGES = [["Monitor", MONITOR], 
                ["Admin", ADMIN],
                ["Delegate", DELEGATE]]
end
