{{-- Echo Data --}}
Hello, {{ $name }}.
The current UNIX timestamp is {{ time() }}.

{{-- Echoing Data After Checking For Existence --}}
{{ isset($name) ? $name : 'Default' }}
{{ $name or 'Default' }}

{{-- Displaying Raw Text With Curly Braces --}}
@{{ This will not be processed by Blade }}

{{-- Do not escape data --}}
Hello, {!! $name !!}.

{{-- Escape Data --}}
Hello, {{{ $name }}}.
<?php

if ($var == true) {
    return false;
}
?>

{{-- Define Blade Layout --}}
<html>
    <head>
        <title>
            @hasSection('title')
                @yield('title') - App Name
            @else
                App Name
            @endif
        </title>
    </head>
    <body>
        @section('sidebar')
            This is the master sidebar.
        @stop

        <div class="container">
            @yield('content')
        </div>
    </body>
</html>

{{-- Use Blade Layout --}}
@extends('layouts.master')

@section('sidebar')
    <p>This is appended to the master sidebar.</p>
@stop

@section('content')
    <p>This is my body content.</p>
@stop

{{-- --}}
@yield('section', 'Default Content')

{{-- If Statement --}}
@if (count($records) === 1)
    I have one record!
@elseif (count($records) > 1)
    I have multiple records!
@else
    I don't have any records!
@endif

@unless (Auth::check())
    You are not signed in.
@endunless

{{-- Loops --}}
@for ($i = 0; $i < 10; $i++)
    The current value is {{ $i }}
@endfor

@foreach ($users as $user)
    <p>This is user {{ $user->id }}</p>
@endforeach

@forelse($users as $user)
      <li>{{ $user->name }}</li>
@empty
      <p>No users</p>
@endforelse

@while (true)
    <p>I'm looping forever.</p>
@endwhile

{{-- Include --}}
@include('view.name')
@include('view.name', ['some' => 'data'])

{{-- Inject --}}
@inject('Foo', 'Bar')

{{-- Overwriting Sections --}}
@extends('list.item.container')

@section('list.item.content')
    <p>This is an item of type {{ $item->type }}</p>
@overwrite

{{-- Stacks --}}

{{-- Push a stack --}}
@push('scripts')
    <script src="/example.js"></script>
@endpush

{{-- Render stack --}}
<html>
    <body>
        @stack('scripts')
    </body>
</html>

{{-- Displaying Language Lines --}}
@lang('language.line')

@choice('language.line', 1)

{{-- This comment will not be in the rendered HTML --}}

{{--
This comment will not be in the rendered HTML
This comment will not be in the rendered HTML
This comment will not be in the rendered HTML
 --}}

{{-- Custom Control Structures --}}
@custom

@foo('bar', 'baz')
    @datetime($var)

{{-- Blade Extensions Compatibility --}}
{{-- https://github.com/RobinRadic/blade-extensions --}}
@foreach($stuff as $key => $val)
    {{ $loop->index }}       {{-- int, zero based --}}
    {{ $loop->index1 }}      {{-- int, starts at 1 --}}
    {{ $loop->revindex }}    {{-- int --}}
    {{ $loop->revindex1 }}   {{-- int --}}
    {{ $loop->first }}       {{-- bool --}}
    {{ $loop->last }}        {{-- bool --}}
    {{ $loop->even }}        {{-- bool --}}
    {{ $loop->odd }}         {{-- bool --}}
    {{ $loop->length }}      {{-- int --}}

    @foreach($other as $name => $age)
        {{ $loop->parent->odd }}
        @foreach($friends as $foo => $bar)
            {{ $loop->parent->index }}
            {{ $loop->parent->parentLoop->index }}
        @endforeach
    @endforeach


    @section('content')
        @partial('partials.danger-panel')
            @block('title', 'This is the panel title')

            @block('body')
                This is the panel body.
            @endblock
        @endpartial
    @stop

    @partial('partials.panel')
        @block('type', 'danger')

        @block('title')
            Danger! @render('title')
        @endblock
    @endpartial

    @break

    @continue
@endforeach

@set($now, new DateTime('now'))
@set('newvar', 'value')
{{ $newvar }}

@debug($somearr)

@can('permission', $entity)
You have permission!
@endcan

@can('permission', $entity)
You have permission!
@else
You don't have permission!
@endcan

{{-- Vue tests --}}
<div @click="delete('something')"></div>
