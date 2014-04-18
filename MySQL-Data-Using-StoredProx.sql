-- Create permissions

call createPermission('CTRL_STRATEGY_LIST_GET');
call createPermission('CTRL_STRATEGY_ADD_POST');
call createPermission('CTRL_STRATEGY_EDIT_GET');
call createPermission('CTRL_STRATEGY_EDIT_POST');
call createPermission('CTRL_STRATEGY_DELETE_GET');


-- Create roles

call createRole('ROLE_ADMIN', @role_admin);
call createRoleHasPermission(@role_admin, 'CTRL_STRATEGY_LIST_GET');
call createRoleHasPermission(@role_admin, 'CTRL_STRATEGY_ADD_POST');
call createRoleHasPermission(@role_admin, 'CTRL_STRATEGY_EDIT_GET');
call createRoleHasPermission(@role_admin, 'CTRL_STRATEGY_EDIT_POST');
call createRoleHasPermission(@role_admin, 'CTRL_STRATEGY_DELETE_GET');

call createRole('ROLE_TRADER', @role_trader);

call createRole('ROLE_USER', @role_user);


-- Create accounts

call createUserEntry('admin', @admin);
call createUserHasRole(@admin, @role_admin);

call createUserEntry('trader', @trader);
call createUserHasRole(@trader, @role_trader);

call createUserEntry('user', @user);
call createUserHasRole(@user, @role_user);
