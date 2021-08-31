/**
 * 
 */
 
 
 $(function(){
	$(".delete").click(function(){
	 let deleteId = $(this).prev().val();
	console.log('delete id='+deleteId);
	 Swal.fire({
  title: 'Are you sure?',
  text: "You won't be able to revert this!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!'
}).then((result) => {
  if (result.isConfirmed) {
    Swal.fire(
      'Deleted!',
      'Your file has been deleted.',
      'success'
    )
    
    window.location.href="DeleteNews?id="+deleteId;
  }
})
})
	
})
 
 
