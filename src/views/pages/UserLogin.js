import React, { Component, Fragment } from 'react';
import HouseUser from '../../bunkbyte/components/Login/HouseUser';
import SiteMainNav from '../../bunkbyte/components/Website/MainNav.component'
import SiteFooter from '../../bunkbyte/components/Website/WebsiteFooter.component'


export default class UserLogin extends Component {
  render() {
    return (
      <Fragment>
        {/* nav section */}
        <SiteMainNav />


        <HouseUser />



        {/* footer section */}
        <SiteFooter />
      </Fragment>
    );
  }
}
