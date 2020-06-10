# elasticsearch-playground
Just toying with Elasticsearch and Go!

# Setup

***Note:** Docker daemon must be running!*

- Run `make elasticsearch7_container`
- If you want to use DejaVu (GUI for Elasticsearch)
  - Run `make elasticsearch_dejavu`
  - Browse to `http://localhost:1358`
- Run `make run` to run `main.go`

# Commands

<table class="table table-bordered table-hover table-condensed">
<thead><tr><th title="Field #1">Make Command</th>
<th title="Field #2">Purpose</th>
</tr></thead>
<tbody><tr>
<td>make og_elasticsearch_container</td>
<td>Runs an plain Elasticsearch container without switches needed for Dejavu (Elasticsearch GUI)</td>
</tr>
<tr>
<td>make elasticsearch7_container</td>
<td>Runs an Elasticsearch v7.7.1 container for use with Dejavu</td>
</tr>
<tr>
<td>make run</td>
<td>Runs main.go</td>
</tr>
<tr>
<td>make list_targets</td>
<td>Lists all Make targets</td>
</tr>
<tr>
<td>make elasticsearch6_container</td>
<td>Runs an Elasticsearch v6.7.2 container for use with Dejavu</td>
</tr>
<tr>
<td>make elasticsearch_dejavu</td>
<td>Runs an Dejavu container, which is a GUI web interface for Elasticsearch</td>
</tr>
</tbody></table>
