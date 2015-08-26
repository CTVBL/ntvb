<cfcomponent>
	<cffunction name="DetailQuery" returntype="query">
		<cfquery name="rsMember" datasource="#APPLICATION.Dsn#">
		Select * From Users
		Where User_ID = #ARGUMENTS.UserID#
		</cfquery>	
		
		<cfreturn rsMember>
	</cffunction>

	<cffunction name="ListQuery" returntype="query">
		<cfquery name="rsMember" datasource="#APPLICATION.Dsn#">
		Select * From Users
		Order By User_Name
		</cfquery>	
		
		<cfreturn rsMember>
	</cffunction>

	<cffunction name="Save">
		<cfparam name="ARGUMENTS.UserID" default="-1">
		<cfscript>
		ARGUMENTS.Password = Trim(ARGUMENTS.Password);
		// encrypt password to write into database. 
		ARGUMENTS.Password = Encrypt(ARGUMENTS.Password, APPLICATION.Key);
		pwd = Replace(ARGUMENTS.Password, "\", "\\", "ALL");
		</cfscript>
		
		<cfif ARGUMENTS.UserID IS -1> 
			<cfquery name="AddUser" datasource="#APPLICATION.dsn#">
			Insert Into Users (User_Name, Password, Access_Level)
			Values ('#ARGUMENTS.UserName#', '#pwd#', #ARGUMENTS.AccessLevel#)
			</cfquery>
		<cfelse>	
			<cfquery name="UpdateUser" datasource="#APPLICATION.Dsn#">
			Update Users 
			Set User_Name = '#ARGUMENTS.UserName#',
			 Password = '#pwd#',
			 Access_Level = #ARGUMENTS.AccessLevel#,
			 Time_Updated = #Now()#
			Where User_ID = #ARGUMENTS.UserID#
			</cfquery>
		</cfif>	

	</cffunction>

</cfcomponent>


