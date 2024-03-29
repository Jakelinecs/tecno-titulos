<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-title">{{ trans('brackets/admin-ui::admin.sidebar.content') }}</li>
            <li class="nav-item"><a class="nav-link" href="{{ url('admin/posts') }}"><i class="nav-icon icon-plane"></i> {{ trans('admin.post.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/roles') }}"><i class="nav-icon icon-drop"></i> {{ trans('admin.role.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/permissions') }}"><i class="nav-icon icon-graduation"></i> {{ trans('admin.permission.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/users') }}"><i class="nav-icon icon-magnet"></i> {{ trans('admin.user.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/role-has-permissions') }}"><i class="nav-icon icon-diamond"></i> {{ trans('admin.role-has-permission.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/type-academic-degrees') }}"><i class="nav-icon icon-plane"></i> {{ trans('admin.type-academic-degree.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/entities') }}"><i class="nav-icon icon-compass"></i> {{ trans('admin.entity.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/academic-degrees') }}"><i class="nav-icon icon-umbrella"></i> {{ trans('admin.academic-degree.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/requirements') }}"><i class="nav-icon icon-diamond"></i> {{ trans('admin.requirement.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/academic-degree-requirements') }}"><i class="nav-icon icon-flag"></i> {{ trans('admin.academic-degree-requirement.title') }}</a></li>
           {{-- Do not delete me :) I'm used for auto-generation menu items --}}

            <li class="nav-title">{{ trans('brackets/admin-ui::admin.sidebar.settings') }}</li>
            <li class="nav-item"><a class="nav-link" href="{{ url('admin/admin-users') }}"><i class="nav-icon icon-user"></i> {{ __('Manage access') }}</a></li>
            <li class="nav-item"><a class="nav-link" href="{{ url('admin/translations') }}"><i class="nav-icon icon-location-pin"></i> {{ __('Translations') }}</a></li>
            {{-- Do not delete me :) I'm also used for auto-generation menu items --}}
            {{--<li class="nav-item"><a class="nav-link" href="{{ url('admin/configuration') }}"><i class="nav-icon icon-settings"></i> {{ __('Configuration') }}</a></li>--}}
        </ul>
    </nav>
    <button class="sidebar-minimizer brand-minimizer" type="button"></button>
</div>
