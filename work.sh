# Anva
odoo(){
  cd /Volumes/Projects/Anva/hoa360pro;
  source /Volumes/Projects/Anva/hoa360pro/venv/bin/activate;
  echo "Updating Odoo Server"
  /Volumes/Projects/Anva/server/odoo/odoo-bin $1 -d demo-dev-george -c /Volumes/Projects/Anva/hoa360pro/conf/odoo.conf
}
updooall(){
  cd /Volumes/Projects/Anva/hoa360pro;
  source /Volumes/Projects/Anva/hoa360pro/venv/bin/activate;
  echo "Updating Odoo Server(all)"
  /Volumes/Projects/Anva/server/odoo/odoo-bin -u all -d demo-dev-george -c /Volumes/Projects/Anva/hoa360pro/conf/odoo.conf
}
updoo(){
  cd /Volumes/Projects/Anva/hoa360pro;
  source /Volumes/Projects/Anva/hoa360pro/venv/bin/activate;
  echo "Starting Odoo Server(Single)";
  /Volumes/Projects/Anva/server/odoo/odoo-bin -u account_analytic_line -d demo-dev-george -c /Volumes/Projects/Anva/hoa360pro/conf/odoo.conf
}

linkext(){
  ln -f /Volumes/Projects/Anva/anva-ui/odoo/anva_graphql/schema.py /Volumes/Projects/Anva/hoa360pro/external/anva_graphql/schema.py
}
