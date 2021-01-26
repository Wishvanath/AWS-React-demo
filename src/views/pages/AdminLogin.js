import React, { Component, Fragment } from 'react';
import HouseAdmin from '../../bunkbyte/components/Login/HouseAdmin';
import SiteMainNav from '../../bunkbyte/components/Website/MainNav.component'
import SiteFooter from '../../bunkbyte/components/Website/WebsiteFooter.component'

export default class AdminLogin extends Component {
  render() {
    return (
      <Fragment>
        {/* nav section */}
        <SiteMainNav />

        <HouseAdmin />


        {/* footer section */}
        <SiteFooter />
      </Fragment>
    );
  }
}
