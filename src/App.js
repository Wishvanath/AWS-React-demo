import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import DashboardLayout from './layouts/DashboardLayout';
import './bunkbyte/scss/styles.scss';
import HomePage from './views/pages/HomePage';
import OwnerLogin from './views/pages/OwnerLogin';
import UserLogin from './views/pages/UserLogin';
import AdminLogin from './views/pages/AdminLogin';
import OwnerRegistrationPage from './views/pages/OwnerRegistration';

export default function App() {
  return (
    <BrowserRouter>
      <Switch>
        {/* website home page route */}
        <Route exact path = "/" component ={HomePage} />
        {/* owner login and registration route */}
        <Route exact path = "/owner/login" component = {OwnerLogin} />
        <Route exact path = "/user/login" component = {UserLogin} />
        <Route exact path = "/admin/login" component = {AdminLogin} />
        <Route exact path = "/owner/registration" component = {OwnerRegistrationPage} />

        {/* dashboard route */}
        <Route component={DashboardLayout} />
      </Switch>
    </BrowserRouter>
  );
}
