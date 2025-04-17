export interface Menu {
  icon: string;
  name: string;
  code: string;
  authType?: Array<string>;
  childPage?: Array<string>
  children?: Array<Menu>
}

// ROLE_SYS_ADMIN
export const menuListData: Array<Menu> = [
  {
    code: 'index',
    name: '首页',
    icon: 'Monitor',
    authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
    childPage: []
  },
  {
    code: 'resource-management',
    name: '资源管理',
    icon: 'School',
    authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
    children: [
      {
        code: 'datasource',
        name: '数据源',
        icon: 'DataLine',
        authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
        childPage: []
      },
      {
        code: 'driver-management',
        name: '驱动上传',
        icon: 'Cpu',
        authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
        childPage: []
      },
      {
        code: 'file-center',
        name: '资源中心',
        icon: 'Paperclip',
        authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
        childPage: []
      }
    ]
  },
  {
    code: 'data-server',
    name: '数据服务',
    icon: 'DataAnalysis',
    authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
    children: [
      {
        code: 'report-components',
        name: '数据卡片',
        icon: 'Grid',
        authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
        childPage: ['report-item']
      },
      {
        code: 'report-views',
        name: '数据大屏',
        icon: 'Histogram',
        authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
        childPage: ['report-views-detail']
      },
      {
        code: 'custom-api',
        name: '接口服务',
        icon: 'MessageBox',
        authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
        childPage: []
      },
      {
        code: 'custom-form',
        name: '分享表单',
        icon: 'Files',
        authType: [ 'ROLE_TENANT_MEMBER', 'ROLE_TENANT_ADMIN' ],
        childPage: ['form-list', 'form-query', 'form-setting']
      },
    ]
  },
  {
    code: 'tenant-management',
    name: '租户管理',
    icon: 'OfficeBuilding',
    authType: [ 'ROLE_TENANT_ADMIN' ],
    children: [
      {
        code: 'tenant-user',
        name: '租户成员',
        icon: 'User',
        authType: [ 'ROLE_TENANT_ADMIN' ],
        childPage: []
      }
    ]
  },
  {
    code: 'user-center',
    name: '用户中心',
    icon: 'UserFilled',
    authType: [ 'ROLE_SYS_ADMIN' ],
    childPage: []
  },
  {
    code: 'tenant-list',
    name: '租户列表',
    icon: 'List',
    authType: [ 'ROLE_SYS_ADMIN' ],
    childPage: []
  },
  {
    code: 'tenant-user',
    name: '租户成员',
    icon: 'User',
    authType: [ 'ROLE_SYS_ADMIN' ],
    childPage: []
  },
  {
    code: 'oauth-management',
    name: '免密登录',
    icon: 'Position',
    authType: [ 'ROLE_SYS_ADMIN' ],
    childPage: []
  },
  {
    code: 'license',
    name: '证书安装',
    icon: 'Files',
    authType: [ 'ROLE_SYS_ADMIN' ],
    childPage: []
  }
]
