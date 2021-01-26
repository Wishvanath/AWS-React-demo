import React, { Component } from 'react';
import { Switch, Route, Redirect, Link } from 'react-router-dom';
import { UncontrolledDropdown, DropdownToggle, DropdownMenu, DropdownItem } from 'reactstrap';
import { Header, SidebarNav,  PageContent, Page } from '../bunkbyte';
import Logo from '../assets/images/bunk_byte_mini_logo.svg';
import nav from '../_nav';
import routes from '../views';
import handleKeyAccessibility, { handleClickAccessibility } from '../bunkbyte/helpers/handleTabAccessibility';

const MOBILE_SIZE = 992;

export default class DashboardLayout extends Component {
  constructor(props) {
    super(props);
    this.state = {
      sidebarCollapsed: false,
      isMobile: window.innerWidth <= MOBILE_SIZE,
    };
  }

  handleResize = () => {
    if (window.innerWidth <= MOBILE_SIZE) {
      this.setState({ sidebarCollapsed: false, isMobile: true });
    } else {
      this.setState({ isMobile: false });
    }
  };

  componentDidUpdate(prev) {
    if (this.state.isMobile && prev.location.pathname !== this.props.location.pathname) {
      this.toggleSideCollapse();
    }
  }

  componentDidMount() {
    window.addEventListener('resize', this.handleResize);
    document.addEventListener('keydown', handleKeyAccessibility);
    document.addEventListener('click', handleClickAccessibility);
  }

  componentWillUnmount() {
    window.removeEventListener('resize', this.handleResize);
  }

  toggleSideCollapse = () => {
    this.setState(prevState => ({ sidebarCollapsed: !prevState.sidebarCollapsed }));
  };


  render() {
    const { sidebarCollapsed } = this.state;
    const sidebarCollapsedClass = sidebarCollapsed ? 'side-menu-collapsed' : '';
    return (
        <div className={`app ${sidebarCollapsedClass}`}>
          <div className="app-body">
            <SidebarNav
              nav={nav}
              logo={Logo}
              logoText="Bunk Byte"
              isSidebarCollapsed={sidebarCollapsed}
              toggleSidebar={this.toggleSideCollapse}
              {...this.props}
            />
            <Page>
              <Header
                toggleSidebar={this.toggleSideCollapse}
                isSidebarCollapsed={sidebarCollapsed}
                routes={routes}
                {...this.props}
              >
                <HeaderNav />
              </Header>
              <PageContent>
                <Switch>
                  {routes.map((page, key) => (
                    <Route path={page.path} component={page.component} key={key} />
                  ))}
                  <Redirect from="/" to="/dashboard" />
                </Switch>
              </PageContent>
            </Page>
          </div>
        </div>
    );
  }
}

function HeaderNav() {
  return (
    <React.Fragment>
      <UncontrolledDropdown nav inNavbar>
        <DropdownToggle nav caret>
          Admin
        </DropdownToggle>
        <DropdownMenu right>
          <DropdownItem>Status: Online</DropdownItem>
          <DropdownItem divider />
          <DropdownItem><Link to ="/setting">Account Setting</Link></DropdownItem>
          <DropdownItem divider />
          <DropdownItem> Logout </DropdownItem>
        </DropdownMenu>
      </UncontrolledDropdown>
    </React.Fragment>
  );
}
