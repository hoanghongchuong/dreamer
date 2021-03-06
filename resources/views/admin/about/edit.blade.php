@extends('admin.master')
@section('content')
@section('controller', $trang)
@section('action','Edit')
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
   	@yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  
    <div class="box">
    	@include('admin.messages_error')
        <div class="box-body">
        	<form method="post" action="backend/about/edit?type={{ @$_GET['type'] }}" enctype="multipart/form-data">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
        		
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>
                        <?php if($_GET['type'] != 'footer' and $_GET['type'] != 'gioi-thieu'){?>
	                  	<li><a href="#tab_2" data-toggle="tab" aria-expanded="true">SEO</a></li>
                        <?php } ?>
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
                                    <?php if($_GET['type'] != 'footer' and $_GET['type'] == 'gioi-thieu'){?>
									<div class="form-group" >
										<div class="form-group">
											<img src="{{ asset('upload/hinhanh/'.@$data->photo) }}" onerror="this.src='{{asset('public/admin_assets/images/no-image.jpg')}}'" width="200"  alt="NO PHOTO" />
											<input type="hidden" name="img_current" value="{!! @$data->photo !!}">
										</div>
										<label for="file">Chọn File ảnh</label>
								     	<input type="file" id="file" name="fImages" >
								    	<p class="help-block">Width:225px - Height: 162px</p>
									</div>
									
									<div class="clearfix"></div>
							    	<div class="form-group">
								      	<label for="ten">Tên</label>
								      	<input type="text" name="txtName" id="txtName" value="{{ @$data->name }}"  class="form-control" />
									</div>
							        <?php } ?>     
									<input type="hidden" name="txtCom" value="{{ old('txtCom', isset($data) ? @$data->com : null) }}">
								</div>
                            
								<div class="clearfix"></div>
								
								<div class="col-md-6 col-xs-12">
                                
									<div class="box box-info">
						                <h3 class="box-title">Mô tả</h3>  
						                <div class="box-body pad">
						        			<textarea name="txtMota" cols="50" id="txtContent" rows="5" style="width: 100%;">{{ @$data->mota }}</textarea>
						        		</div>
						        	</div>
                                
                                    
								</div>
							 	<div class="col-md-6">
							 		<div class="box box-info">
						                <h3 class="box-title">Nội dung</h3>  
						                <div class="box-body pad">
						        			<textarea name="txtContent" id="txtContent" cols="50" rows="5" style="width: 100%;">{{ @$data->content }}</textarea>
						        		</div>
						        	</div>
							 	</div>
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                  	
	                	<div class="tab-pane" id="tab_2" >
	                  		<div class="row">
		                    	<div class="col-md-6 col-xs-12">
		                    		<div class="form-group">
								      	<label for="title">Title</label>
								      	<input type="text" name="txtTitle" value="{!! old('txtTitle', isset($data) ? @$data->title : null) !!}"  class="form-control" />
									</div>
		                    		<div class="form-group">
								      	<label for="keyword">Keyword</label>
								      	<textarea name="txtKeyword" rows="5" class="form-control">{!! old('txtKeyword', isset($data) ? @$data->keyword : null) !!}</textarea>
									</div>
									<div class="form-group">
								      	<label for="description">Description</label>
								      	<textarea name="txtDescription" rows="5" class="form-control">{!! old('txtDescription', isset($data) ? @$data->description : null) !!}</textarea>
									</div>
		                    	</div>
	                    	</div>
	                    	<div class="clearfix"></div>
	                	</div><!-- /.tab-pane -->
	                </div><!-- /.tab-content -->
	            </div>
			    <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Cập nhật</button>
					    	<button type="button" class="btn btn-danger" onclick="javascript:window.location='backend'">Thoát</button>
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->
@endsection()
