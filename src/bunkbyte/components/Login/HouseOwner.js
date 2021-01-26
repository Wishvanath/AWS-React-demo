import React, { Component, Fragment } from 'react';
import { Form, Input, Button } from 'element-react';
import LOGO from '../../../assets/images/owner-login-logo.svg';

export default class HouseOwner extends Component {
  // constructor defination
  constructor(props) {
    super(props);

    this.state = {
      loading: false,
      form: {
        email: '',  
        pass: '',
      },
      rules: {
        email:[
            { required: true, message: 'Please input email address', trigger: 'blur' },
            { type: 'email', message: 'Please input correct email address', trigger: 'blur,change' }
        ],
        pass: [
          { required: true, message: 'Please input the password', trigger: 'blur' },
        ]
      }
    };
  }

  // event defination

  handleSubmit(e) {
    e.preventDefault();
    this.setState({loading:true})
    this.refs.form.validate(valid => {
    // console.log(valid);
      if (valid) {
        const userName = this.state.form.email;
        const userPassword = this.state.form.pass;
        console.log("form submitted",userName,userPassword);
      } else {
        this.setState({loading:false})
        console.log('error submit!!');
        return false;
      }
    });
  }

  onChange(key, value) {
    this.setState({
      form: Object.assign({}, this.state.form, { [key]: value }),
    });
  }

//   onEmailChange(value) {
//       this.setState({
//         form: Object.assign({}, this.state.form, { email: value }),
//       })
//   }

//   onPasswordChange(value){
//     this.setState({
//         form: Object.assign({}, this.state.form, { pass: value }),
//       })
//   }









  render() {
    return (
      <Fragment>
        <section className="house-owner-login-wrapper">
          <div className="container-fluid">
            <div class="row">
              <div class="col-md-4 offset-md-3">
                <div className="owner-login-inner">
                  <div className="owner-logo-section d-flex justify-content-center">
                    <img src={LOGO} alt="LOGO" />
                  </div>

                  {/* form section */}
                  <Form
                    ref="form"
                    model={this.state.form}
                    rules={this.state.rules}
                    labelWidth="100"
                    className="demo-ruleForm"
                    labelWidth="100"
                    labelPosition="left"
                  >
                    <Form.Item label="User Name" prop="email">
                      <Input
                        type="email"
                        value={this.state.form.email}
                        onChange={this.onChange.bind(this, 'email')}
                        // onChange={this.onEmailChange.bind(this)}
                        autoComplete="on"
                      />
                    </Form.Item>
                    <Form.Item label="Password" prop="pass">
                      <Input
                        type="password"
                        value={this.state.form.pass}
                        onChange={this.onChange.bind(this, 'pass')}
                        // onChange={this.onPasswordChange.bind(this)}
                        autoComplete="off"
                      />
                    </Form.Item>
                    <div className="row">
                      <div className="col-sm-7">
                        <p>
                          Don't have an account ?
                          <span>
                            <a href="/owner/registration"> Create new</a>
                          </span>
                        </p>
                      </div>
                      <div className="col-sm-5 login-btn-wrapper">
                        <Button className="btn btn-login"onClick={this.handleSubmit.bind(this)} loading={this.state.loading}>
                          Login
                        </Button>
                      </div>
                    </div>
                    {/* <Form.Item>
                      <Button type="primary" onClick={this.handleSubmit.bind(this)} loading={this.state.loading}>
                        Submit
                      </Button>
                    </Form.Item> */}
                  </Form>

                  {/* end of form section */}
                </div>
              </div>
            </div>
          </div>
        </section>
      </Fragment>
    );
  }
}
