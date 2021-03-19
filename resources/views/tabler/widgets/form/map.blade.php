
<style>
  .uper {
    margin-top: 40px;
  }
  
  #bookstoreTable{
	float:left;
	width:50%;
	height:450px;
 }

  #map-canvas{
	height: 450px; 
	width: 50%; 
	float:right;
  }
</style>
<div class="uper">
  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div><br />
  @endif
<script src="/js/jquery-3.5.1.min.js"></script
<!-------- LAB SAMPLE GOOGLE MAP API : AIzaSyC9iA2pIWsCO4P3KQkEY8OgeEiMfVmg1oE   ------------>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9iA2pIWsCO4P3KQkEY8OgeEiMfVmg1oE"></script>
<script src="/js/contactIndex.js"></script>
<table id="bookstoreTable">
<tr>
<td class="title" colspan="2"><a name="Results">Stores</a></td>
</tr>
</table>
<div id="map-canvas"></div>
</div>