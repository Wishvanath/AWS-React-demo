import React, { Component, Fragment } from 'react';
import LOGO from '../../../assets/images/footer-website-logo.svg';

export default class SiteMainNav extends Component {
  onSelect() {}

  render() {
    return (
      <Fragment>
        <nav className="navbar navbar-expand-lg navbar-light bg-light">
          <div className="container-fluid site-navigation-wrapper">
            <a className="navbar-brand" href="/">
              <img src={LOGO} alt="LOGO"/>
            </a>
            <button
              className="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span className="navbar-toggler-icon"></span>
            </button>
            <div className="collapse navbar-collapse" id="navbarSupportedContent">
              {/* <ul className="navbar-nav mr-auto">
                <li className="nav-item active">
                  <a className="nav-link">Left Link 1</a>
                </li>
                <li className="nav-item">
                  <a className="nav-link">Left Link 2</a>
                </li>
              </ul> */}
              <ul className="navbar-nav ml-auto mb-2 mb-lg-0">
                <li className="nav-item">
                  <a className="nav-link active" aria-current="page" href="/">
                    Home
                  </a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#/">
                    Pricing
                  </a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#/">
                    About Us
                  </a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#/">
                    Contanct Us
                  </a>
                </li>

                <li className="nav-item dropdown">
                  <a
                    className="nav-link dropdown-toggle"
                    href="#"
                    id="navbarDropdown"
                    role="button"
                    data-bs-toggle="dropdown"
                    aria-expanded="false"
                  >
                    Join Us
                  </a>
                  <ul className="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li>
                      <a className="dropdown-item" href="/owner/login">
                        warehouse Owner
                      </a>
                    </li>
                    <li>
                      <hr className="dropdown-divider" />
                    </li>
                    <li>
                      <a className="dropdown-item" href="/user/login">
                        Warehouse User
                      </a>
                    </li>
                    <li>
                      <hr className="dropdown-divider" />
                    </li>
                    <li>
                      <a className="dropdown-item" href="/admin/login">
                        Warehouse Admin
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </Fragment>
    );
  }
}
