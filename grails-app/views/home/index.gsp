<html>
<head>
    <meta name='layout' content='main'/>
    <r:require modules="application"/>
    <title>Home</title>
</head>

<body>
<div class="hero-unit">
    <h1>Ladder application</h1>

    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at pellentesque lacus. In nec egestas turpis. Fusce eget tempus justo. Phasellus id massa et dui scelerisque viverra quis nec tellus. Donec felis dui, tristique a pulvinar at, posuere a nunc. Cras mattis feugiat augue, sit amet tristique ante vestibulum id. Proin suscipit luctus eros ut molestie. Pellentesque dictum fringilla semper.</p>
</div>

<div class="row">
    <div class="span6"><div class="well"><g:render template="latestMatches" model="${latestMatches}"/></div></div>

    <div class="span6">
        <div class="well" id="shoutbox">
            <g:formRemote id="shoutForm" name="shoutForm" url="[controller: 'shout', action: 'ajaxSave']" method="POST" update="shouts" before="disableShout()" after="enableShout()" onSuccess="clearForm('#shoutForm')">
                <input type="text" name="shout_" id="shout_" />
                <input type="submit" value="Shout!" id="shoutBtn" />
                <g:hiddenField name="shout" id="shout" />
            </g:formRemote>
            <div id="shouts">
                <g:render template="/shout/latestShouts" model="shouts" />
            </div>
        </div>
    </div>
</div>
</body>
</html>