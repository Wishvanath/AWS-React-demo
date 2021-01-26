import React, { Fragment } from 'react';
import OwnerRegistration from '../../bunkbyte/components/Registration/HouseOwner';
import SiteMainNav from '../../bunkbyte/components/Website/MainNav.component';
import SiteFooter from '../../bunkbyte/components/Website/WebsiteFooter.component';
function OwnerRegistrationPage() {
  return (
    <Fragment>
      {/* nav section */}
      <SiteMainNav />


        <OwnerRegistration />

      {/* footer section */}
      <SiteFooter />
    </Fragment>
  );
}

export default OwnerRegistrationPage;
