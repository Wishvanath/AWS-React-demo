import React, { Component, Fragment } from 'react'
// import { Button } from 'element-react';
// import { Button } from 'antd';
import 'element-theme-default';
import 'antd/dist/antd.css';
import SiteMainNav from '../../bunkbyte/components/Website/MainNav.component';
import SiteFooter from '../../bunkbyte/components/Website/WebsiteFooter.component';
import WebsiteBodyContent from '../../bunkbyte/components/Website/WebsiteBody.component';

export default class HomePage extends Component {
    render() {
        return (
            <Fragment>

                {/* website main navbar section */}
                <SiteMainNav />


                {/* website body content section */}
                <WebsiteBodyContent />

                {/* website footer section */}
                <SiteFooter />


                {/* <h1>Home Page</h1>
                <Button type="primary">Hello</Button> */}
            </Fragment>
        )
    }y
    
}
