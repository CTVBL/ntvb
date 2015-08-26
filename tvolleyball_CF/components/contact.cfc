<cfcomponent>
	<cfset dbTrue = APPLICATION.dbTrue>
	<cfset dbFalse = APPLICATION.dbFalse>

	<cffunction name="Delete" returntype="numeric">
    	<cfquery name="DeleteQuery" datasource="#APPLICATION.Dsn#">
		Delete From Contacts
		Where Contact_ID = #ARGUMENTS.ContactID#
		</cfquery>

		<cfreturn 1>
	</cffunction>

	<cffunction name="DetailQuery" returntype="query">
    	<cfquery name="rsDetailQuery" datasource="#APPLICATION.Dsn#">
		Select * From Contacts
		Where Contact_ID = #ARGUMENTS.ContactID#
		</cfquery>

		<cfreturn rsDetailQuery>
	</cffunction>

	<cffunction name="ListboxQuery" returntype="query">
		<cfparam name="ARGUMENTS.LeagueID" default="-1">
		
		<cfquery name="rsListboxQuery" datasource="#APPLICATION.Dsn#">
		Select Contact_ID, CONCAT(Last_Name, ', ', First_Name) As Contact_Name 
		From Contacts
		Order By Last_Name, First_Name
		</cfquery>

		<cfreturn rsListboxQuery>
	</cffunction>

	<cffunction name="ListQuery" returntype="query">
		<cfquery name="rsListQuery" datasource="#APPLICATION.Dsn#">
		Select * From Contacts
		Order By Last_Name, First_Name
		</cfquery>

		<cfreturn rsListQuery>
	</cffunction>

	<cffunction name="Save">
		<cfparam name="ARGUMENTS.ContactID" default="-1">
		
		<cfif ARGUMENTS.ContactID IS -1> 
			<cfquery name="UpdateCustomer" datasource="#APPLICATION.dsn#">
			Insert Into Contacts (First_Name, Last_Name, Gender, Skill_Level, Phone, Email)
			Values ('#ARGUMENTS.FirstName#', '#ARGUMENTS.LastName#', '#ARGUMENTS.Gender#', '#ARGUMENTS.Level#', '#ARGUMENTS.Phone#', '#ARGUMENTS.Email#')
			</cfquery>
			<cfset isnew = true>
		<cfelse>
			<cfquery name="UpdateCustomer" datasource="#APPLICATION.Dsn#">
			Update Contacts 
			Set First_Name = '#ARGUMENTS.FirstName#',
			 Last_Name = '#ARGUMENTS.LastName#',
			 Skill_Level = '#ARGUMENTS.Level#',
			 Gender = '#ARGUMENTS.Gender#',
			 Email = '#ARGUMENTS.Email#',
			 Phone = '#ARGUMENTS.Phone#',
			 Time_Updated = #Now()#
			Where Contact_ID = #ARGUMENTS.ContactID#
			</cfquery>
			<cfset isnew = false>
		</cfif>	
		
	</cffunction>

	<cffunction name="SpareListQuery" returntype="query">
		<cfquery name="rsListQuery" datasource="#APPLICATION.Dsn#">
		Select * From Contacts
		Order By Gender, Skill_Level, Last_Name, First_Name
		</cfquery>

		<cfreturn rsListQuery>
	</cffunction>

</cfcomponent>


