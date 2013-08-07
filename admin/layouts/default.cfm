<!---
This file is part of the Meld Forums application.

Meld Forums is licensed under the GPL 2.0 license
Copyright (C) 2010 2011 Meld Solutions Inc. http://www.meldsolutions.com/

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, version 2 of that license..

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

--->
<cfimport prefix="ui" taglib="../ui" />

<cfsilent>
	<!--- headers --->
	<cfinclude template="../includes/headers/global.cfm">
</cfsilent>
<cfoutput>#application.pluginManager.renderAdminTemplate(body=body,pageTitle=rc.pluginConfig.getName(),jsLib="jquery")#</cfoutput>

<!--- this really should be at the bottom of the page as a whole, but this is not currently supported by Mura --->
<ui:javascript files="#rc.$.globalConfig().getContext()#/plugins/#rc.pluginConfig.getDirectory()#/admin/assets/js/admin.js" />
<ui:javascript files="#rc.$.globalConfig().getContext()#/plugins/#rc.pluginConfig.getDirectory()#/admin/assets/js/jquery.datatables.min.js" />
<ui:javascript mode="output" /><!--- spit out the javascript --->
