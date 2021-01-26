import React, { Fragment } from 'react';
import LOGO from '../../../assets/images/footer-website-logo.svg'
function SiteFooter() {
  return (
    <Fragment>
      <div className="website-footer-section">
        <div className="container-fluid">
          <div className="row website-footer-inner">
            <div className="col-md-6 footer-left">
              <div className="logo-inner-wrapper">
                <img src={LOGO} alt="Footer LOGO" />
              </div>
              <div className="social-inner-wrapper">
                <div className="col-section">
                  <a href="http://" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-facebook-official" aria-hidden="true"></i>
                  </a>
                </div>
                <div className="col-section">
                  <a href="http://" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-linkedin-square" aria-hidden="true"></i>
                  </a>
                </div>
                <div className="col-section">
                  <a href="http://" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-twitter-square" aria-hidden="true"></i>
                  </a>
                </div>
                <div className="col-section">
                  <a href="http://" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-youtube-play" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>

            <div className="col-md-6 footer-right">
                <div className="copy-right-wrapper">
                    <p>Copyright © 2020 Bunk Byte | All rights reserved.</p>
                    <p>Privacy Policy | Terms & Conditions</p>
                </div>
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
}

export default SiteFooter;
