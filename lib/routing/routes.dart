const rootRoute = "/";


const overViewPageDisplayName = 'Overview';
const overViewPageRoute = '/overview';

const driversPageDisplayName = 'Drivers';
const driversPageRoute = '/drivers';

const clientsPageDisplayName = 'Clients';
const clientsPageRoute = '/clients';

const authPageDisplayName = 'Logout';
const authPageRoute = '/auth';

class MenuItem{
  final String name, route;
  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(overViewPageDisplayName, overViewPageRoute),
  MenuItem(driversPageDisplayName, driversPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(authPageDisplayName, authPageRoute)
];
