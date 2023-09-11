@isset($tasks)
<ul>
    @foreach ($tasks as $task )
    <li>{{json_encode($task) }}</li>
    @endforeach
</ul>
@endisset
