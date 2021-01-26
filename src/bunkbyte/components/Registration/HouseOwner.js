import React, { Component, Fragment } from 'react';
import { Form, Input, Button } from 'element-react';
import LOGO from '../../../assets/images/owner-registration-logo.svg';

export default class OwnerRegistration extends Component {
  // constructor defination
  constructor(props) {
    super(props);

    this.state = {
      loading: false,
      form: {
        name: '',
        email: '',
        pass: '',
        phoneNumber: '',
        company: '',
        checkPass: '',
      },
      rules: {
        name: [{ required: true, message: 'Please input your name', trigger: 'blur' }],
        email: [
          { required: true, message: 'Please input email address', trigger: 'blur' },
          { type: 'email', message: 'Please input correct email address', trigger: 'blur,change' },
        ],
        phoneNumber: [{ required: true, message: 'Please input phone number', trigger: 'blur' }],
        company: [{ required: true, message: 'Please input company', trigger: 'blur' }],
        pass: [
          //   { required: true, message: 'Please input the password', trigger: 'blur' },
          { required: true, message: 'Please input the password', trigger: 'blur' },
          {
            validator: (rule, value, callback) => {
              if (value === '') {
                callback(new Error('Please input the password'));
              } else {
                if (this.state.form.checkPass !== '') {
                  this.refs.form.validateField('checkPass');
                }
                callback();
              }
            },
          },
        ],
        checkPass: [
          { required: true, message: 'Please input the password again', trigger: 'blur' },
          {
            validator: (rule, value, callback) => {
              if (value === '') {
                callback(new Error('Please input the password again'));
              } else if (value !== this.state.form.pass) {
                callback(new Error("Two inputs don't match!"));
              } else {
                callback();
              }
            },
          },
        ],
      },
    };
  }

  // event defination
  handleSubmit(e) {
    e.preventDefault();
    this.setState({ loading: true });
    this.refs.form.validate(valid => {
      // console.log(valid);
      if (valid) {
        const userName = this.state.form.email;
        const userPassword = this.state.form.pass;
        console.log('form submitted', userName, userPassword);
      } else {
        this.setState({ loading: false });
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
                    <Form.Item label="Name" prop="name">
                      <Input
                        type="text"
                        value={this.state.form.name}
                        onChange={this.onChange.bind(this, 'name')}
                        // onChange={this.onEmailChange.bind(this)}
                        autoComplete="on"
                      />
                    </Form.Item>

                    <Form.Item label="Email" prop="email">
                      <Input
                        type="email"
                        value={this.state.form.email}
                        onChange={this.onChange.bind(this, 'email')}
                        // onChange={this.onEmailChange.bind(this)}
                        autoComplete="on"
                      />
                    </Form.Item>
                    <Form.Item label="Contact" prop="phoneNumber">
                      <Input
                        type="text"
                        value={this.state.form.phoneNumber}
                        onChange={this.onChange.bind(this, 'phoneNumber')}
                        // onChange={this.onEmailChange.bind(this)}
                        autoComplete="off"
                      />
                    </Form.Item>
                    <Form.Item label="Company" prop="company">
                      <Input
                        type="text"
                        value={this.state.form.company}
                        onChange={this.onChange.bind(this, 'company')}
                        // onChange={this.onEmailChange.bind(this)}
                        autoComplete="off"
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
                    <Form.Item label="Confirm" prop="checkPass">
                      <Input
                        type="password"
                        value={this.state.form.checkPass}
                        onChange={this.onChange.bind(this, 'checkPass')}
                        autoComplete="off"
                      />
                    </Form.Item>
                    <div className="row">
                      <div className="col-sm-7">
                        <p>
                          Have Signup ?
                          <span>
                            <a href="/owner/login"> Login</a>
                          </span>
                        </p>
                      </div>
                      <div className="col-sm-5 login-btn-wrapper">
                        <Button
                          className="btn btn-login"
                          onClick={this.handleSubmit.bind(this)}
                          loading={this.state.loading}
                        >
                          Signup
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
