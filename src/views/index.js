import AccountSettingPage from './pages/AccountSettingPage';
import CompanyDetailsPage from './pages/CompanyDetailsPage';
import Dashboard from './pages/DashboardPage';
import MyAgentPage from './pages/MyAgentPage';
import MyPlanPage from './pages/MyPlanPage';
import NewWareHousePage from './pages/NewWareHousePage';
import WarehouseListPage from './pages/WarehouseListPage';

// See React Router documentation for details: https://reacttraining.com/react-router/web/api/Route
const pageList = [
  {
    name: 'Dashboard',
    path: '/dashboard',
    component: Dashboard,
  },
  // {
  //   name: 'About Us',
  //   path: '/about',
  //   component: LoginPage
  // },
  // {
  //   name: 'Setting',
  //   path: '/setting',
  //   component: LoginPage
  // },
  // {
  //   name: 'Login Page',
  //   path: '/app/login',
  //   component: LoginPage
  // },
  // {
  //   name: 'Url Demo',
  //   path: '/demo/:id',
  //   component: Beautify
  // }


  {
    name: 'New Warehouse',
    path: '/app/new-warehouse',
    component: NewWareHousePage
  },
  {
    name: 'Warehouse List',
    path: '/app/warehouse-list',
    component: WarehouseListPage
  },
  {
    name: 'My Agent',
    path: '/app/agent',
    component: MyAgentPage
  },
  {
    name: 'Company Details',
    path: '/app/company',
    component: CompanyDetailsPage
  },
  {
    name: 'My Plan',
    path: '/app/plan',
    component: MyPlanPage
  },
  {
    name: 'Setting',
    path: '/app/setting',
    component: AccountSettingPage
  },
];

export default pageList;
