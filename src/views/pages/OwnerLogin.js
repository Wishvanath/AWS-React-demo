import React, { Component, Fragment } from 'react'
import HouseOwner from '../../bunkbyte/components/Login/HouseOwner'
import SiteMainNav from '../../bunkbyte/components/Website/MainNav.component'
import SiteFooter from '../../bunkbyte/components/Website/WebsiteFooter.component'

export default class LoginPage extends Component {
  render() {
    return (
      <Fragment>
        {/* nav section */}
        <SiteMainNav />

        
        <HouseOwner />
        

        {/* footer section */}
        <SiteFooter />
      </Fragment>
    )
  }
}
