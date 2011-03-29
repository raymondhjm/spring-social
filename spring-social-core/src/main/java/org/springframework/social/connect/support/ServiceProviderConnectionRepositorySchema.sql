create table ServiceProviderConnection (id identity,
					accountId varchar not null,
					providerId varchar not null,
					providerAccountId varchar,
					profileName varchar,
					profileUrl varchar,
					profilePictureUrl varchar,
					allowSignIn boolean,
					accessToken varchar not null,					
					secret varchar, 
					refreshToken varchar,
					primary key (identity));
create index ProviderConnections on ServiceProviderConnection(accountId, providerId);					
create index ConnectionsToProviderAccount on ServiceProviderConnection(providerId, providerAccountId);