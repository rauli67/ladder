<div>
    <table class="table table-striped cursorpointer" id="matches">
        <thead>
        <tr>
            <th>#</th>
            <th>Date</th>
            <th colspan="2" style="text-align:center">Players</th>
            <th>Description</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="match" in="${matches}">
            <tr>
                <td>${match.id}</td>
                <td><g:link controller="match" action="show" id="${match.id}"><g:formatDate format="HH:mm dd.MM.yyyy" date="${match.played}"/></g:link></td>
                <td style="text-align:right"><g:link controller="player" action="show" id="${match.player1.id}">${match.player1}</g:link> <cw:ratingChangeBadge rating="${match.player1rating}" ratingChange="${match.player1ratingChange}" /></td>
                <td><cw:ratingChangeBadge rating="${match.player2rating}" ratingChange="${match.player2ratingChange}" /> <g:link controller="player" action="show" id="${match.player2.id}">${match.player2}</g:link></td>
                <td><i><cw:cutString str="${match.description.encodeAsHTML()}" l="70"/></i></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>