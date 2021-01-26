export default {
  top: [
    {
      divider: true,
    },
    {
      name: 'Dashboard',
      url: '/dashboard',
      icon: 'BarChart2',
    },
    {
      name: 'Warehouse Mng',
      icon: 'Layers',
      children: [
        // {
        //   name: 'Login Page',
        //   url: '/app/login',
        // },
        {
          name: 'New Warehouse',
          url: '/app/new-warehouse',
          icon: 'FolderPlus'
        },
        {
          name: 'Warehouse List',
          url: '/app/warehouse-list',
          icon: 'Grid'
        },
      ],
    },
    
    {
      name: 'My Agent',
      url: '/app/agent',
      icon: 'Users'
    },
    {
      name: 'My Profile',
      icon: 'Settings',
      children: [
        {
          name: 'Company Details',
          url: '/app/company',
          icon: 'Package'
        },
        {
          name: 'My Plan',
          url: '/app/plan',
          icon: 'CreditCard'
        },
        {
          name: 'Account Setting',
          url: '/app/setting',
          icon: 'Settings'
        },
      ],
    },

    {
      divider: true,
    },
    // {
    //   name: 'Widgets',
    //   url: '/widgets',
    //   icon: 'Package',
    //   badge: {
    //     text: 'NEW',
    //   },
    // },
  ],

  bottom: [
    // {
    //   name: 'About Us',
    //   url: '/about',
    //   icon: 'Info'
    // },
    // {
    //   name: 'Setting',
    //   url: '/setting',
    //   icon: 'Settings'
    // }
  ],
};
