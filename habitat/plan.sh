pkg_origin="jaym"
pkg_name="composite-example"
pkg_type="composite"
pkg_version="0.1.0"
 
pkg_services=(
    # core/postgresql
    # core/elasticsearch5

    chef/oc_id
    chef/bookshelf
    chef/oc_bifrost
    chef/oc_erchef
    chef/chef-server-nginx
    chef/chef-server-ctl
)
 
pkg_bind_map=(
   # [chef/oc_id]="database:core/postgresql"
   # [chef/bookshelf]="database:core/postgresql"
   # [chef/oc_bifrost]="database:core/postgresql"
   [chef/oc_id]="chef-server-ctl:chef/chef-server-ctl"
   [chef/bookshelf]="chef-server-ctl:chef/chef-server-ctl"
   [chef/oc_bifrost]="chef-server-ctl:chef/chef-server-ctl"
   [chef/oc_erchef]="bookshelf:chef/bookshelf oc_bifrost:chef/oc_bifrost chef-server-ctl:chef/chef-server-ctl"
   [chef/chef-server-nginx]="oc_erchef:chef/oc_erchef bookshelf:chef/bookshelf oc_bifrost:chef/oc_bifrost oc_id:chef/oc_id chef-server-ctl:chef/chef-server-ctl"
)
